import 'package:flutter/material.dart';
import '../pages/interventionListPage.dart';


/*class Intervention {
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
}*/


class InterventionDetailPage extends StatelessWidget {

  final Intervention intervention;

  InterventionDetailPage({Key key, @required this.intervention}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("Intervention #${intervention.id}"), backgroundColor: Colors.red),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text("Demande d'intervention N° ${intervention.id}", style: Theme.of(context).textTheme.title),
            Text('Interlocuteur ${intervention.title}'),
            Text('Demande ${intervention.title}', style: Theme.of(context).textTheme.title),
            Text('Demande ${intervention.title}'),
          ],
        ),
      ),
      //drawer: MyDrawer(),
    );
  }
}