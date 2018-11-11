import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../pages/interventionDetailPage.dart';
import './interComposePage.dart';
import '../utils/menu.dart';
//import '../routes.dart';
//import '../main.dart';


List<Intervention> parsePosts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
 
  return parsed.map<Intervention>((json) => Intervention.fromJson(json)).toList();
}

Future<List<Intervention>> fetchPost() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    //return Intervention.fromJson(json.decode(response.body));
    return compute(parsePosts, response.body);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Intervention {
  final int userId;
  final int id;
  final String title;
  final String body;

  Intervention({this.userId, this.id, this.title, this.body});

  factory Intervention.fromJson(Map<String, dynamic> json) {
    return Intervention(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() => runApp(InterventionListPage());

class InterventionListPage extends StatefulWidget {
  @override
  _InterventionListPageState createState() => _InterventionListPageState();
}


class _InterventionListPageState extends State<InterventionListPage> {
  //final String routeName = '/InterventionListPage';
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demandes d'interventions list"),
        ),
        //floatingActionButtonLocation: 
        //  FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: 
          const Icon(Icons.add), 
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => InterComposePage()));}
        ),
        body: Center(
          child: FutureBuilder<List<Intervention>>(
            future: fetchPost(),
            builder: (context, snapshot) {
              
              if (snapshot.hasData) {
                //final items = List<String>.generate(15, (i) => snapshot.data.title);
                final items = snapshot.data;
                //return Text(snapshot.data.title);
                return ListView.builder(
                  itemCount: items.length,
                  padding: const EdgeInsets.all(15.0),
                  itemBuilder: (context, index) {
                    final item = items[index].id.toString();

                    return Dismissible(
                      // Each Dismissible must contain a Key. Keys allow Flutter to
                      // uniquely identify Widgets.
                      key: Key(item),
                      // We also need to provide a function that tells our app
                      // what to do after an item has been swiped away.
                      onDismissed: (direction) {
                        // Remove the item from our data source.
                        setState(() {
                          items.removeAt(index);
                        });

                        // Then show a snackbar!
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text("$item dismissed")));
                      },
                      // Show a red background as the item is swiped away
                      background: Container(color: Colors.red),
                      child: ListTile(
                        title: Text(items[index].title),
                        leading: new CircleAvatar(
                                child: new Text(item)
                        ),
                        subtitle: Text(items[index].body),
                        //title: Text('Map'),
                        trailing: Text('12h10'),
                        //onTap: () => openDetailIntervention(context, items[index]),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InterventionDetailPage( intervention: items[index])))
,
                        ),
                        
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

/*void openDetailIntervention(BuildContext context, Intervention intervention) {
    /*Scaffold
        .of(context)
        .showSnackBar(new SnackBar(content: new Text(post.id.toString() + ' - ' + post.title)));
*/
  Navigator.push(context, MaterialPageRoute(builder: (context) => InterventionDetailPage( intervention: intervention)));

}*/
