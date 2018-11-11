import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
//import 'package:flutter_html_textview/flutter_html_textview.dart';
//import './pages/accueilPage.dart';
import './pages/loginPage.dart';
import './utils/menu.dart';
import 'utils/constantes.dart';
//import './routes.dart';

void main() {
  runApp(new MaterialApp(
    home: new LoginPage(),
  ));
}

class AssistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //String html = '<h1>This is heading 1</h1> <h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6><p></p>';
    //String html = '<body>Hello world! <a href="www.html5rocks.com">HTML5 rocks!';
    
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Assistance"), 
        backgroundColor: Color(rouge),
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white,),
          onPressed: () {Navigator.of(context).pop();},
        ),
      ),     
      body: new Container(
        child: new Padding(
          padding: EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              /**FIXME: Ca marche pas, ca remplace toute la fenetre */
              /*new WebviewScaffold(
                url: 'https://www.google.fr',
              ),*/
              //new HtmlTextView(data: html),
              new Text('Assistance', style: TextStyle( fontWeight: FontWeight.bold), textAlign: TextAlign.left, ),
              new Text('Bienvenue dans votre espace personnel "Mon Compte Incomm". Celui-ci a été créé afin de faciliter les relations entre InComm et ses partenaires.'),
              new Container(
                margin: new EdgeInsets.only(
                  //left: 20.0,
                  bottom: 10.0,
                  top: 10.0
                ),
                padding: new EdgeInsets.only(
                  left: 10.0,
                  bottom: 10.0,
                  top: 10.0
                ),
                alignment: Alignment.centerLeft,
                decoration: new BoxDecoration(
                  border: new Border(
                    left: BorderSide(color: Color(rouge), width: 15.0),
                    bottom: BorderSide(color: Color(rouge)),
                  )
                ),
                child : new Text(
                  'Aide en ligne du support Technique Incomm', 
                  style: TextStyle( fontWeight: FontWeight.bold, fontSize: 16.0),) 
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageListPage extends StatefulWidget {
  @override
  _MessageListPageState createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  final items = List<String>.generate(15, (i) => "Item ${i + 1}");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Demande d'intervention"), backgroundColor: Color(rouge),),
      /*body:ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              subtitle: Text('The airplane is only in Act II.'),
              title: Text('Map'),
              trailing: Text('12h10'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            Divider(),
          ],
        ),
      */
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

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
                //title: Text('$item'),
                leading: new CircleAvatar(
                        child: new Text(item)
                ),
                subtitle: Text('The airplane is only in Act II.'),
                title: Text('Map'),
                trailing: Text('12h10'),
                ),
            );
          },
        ),  
      drawer: MyDrawer(),
    );
  }
}

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    //final items = List<String>.generate(10, (i) => "Item ${i + 1}");

    return new Scaffold(
      body: new Container(
  
      ),
      drawer: MyDrawer(),
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Second page"), backgroundColor: Colors.deepOrange,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.blue),
                iconSize: 70.0,
                onPressed: null,
              ),
              new Text("Second page")
            ],
          ),
        ),
      ),

    );
  }
}

