import 'package:flutter/material.dart';
import '../utils/menu.dart';
import './numeroUtils.dart';
//import '../pages/cgu.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mon compte'), backgroundColor: Colors.red,),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NumeroUtils()));
              },
              //onTap: () => print("Search"),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.perm_phone_msg),
                      title: Text('Numéros utiles / Assistance'),
                      contentPadding: EdgeInsets.all(30.0) ,
                      //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                  ],
                ),
              ),
            ),
            Padding( padding: EdgeInsets.only(bottom: 20.0),),
            InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NumeroUtils()));
              },
              //onTap: () => print("Search"),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.perm_phone_msg),
                      title: Text('Numéros utiles / Assistance'),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0) ,
                      //subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                  ],
                ),
              ),
            ),
            Padding( padding: EdgeInsets.only(bottom: 20.0),),           
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  ButtonTheme.bar( // make buttons use the appropriate styles for cards
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('BUY TICKETS'),
                          onPressed: () { /* ... */ },
                        ),
                        FlatButton(
                          child: const Text('LISTEN'),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
