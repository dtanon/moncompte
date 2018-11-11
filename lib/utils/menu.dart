import 'package:flutter/material.dart';
import '../pages/interventionListPage.dart';
import '../pages/homePage.dart';
import '../utils/fontsizeExemple.dart';
import '../pages/apropos.dart';
import '../pages/contactPage.dart';

//import '../routes.dart';
import '../main.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text("Mon compte"),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              title: Text("Demande d'intervention"),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => InterventionListPage()));
              },
            ),
            ListTile(
              title: Text('Font size exemple'),
              onTap: () {
                //Navigator.of(context).pushNamed("/InterventionListPage");
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FontSizeExemple()));
              },
            ),
            ListTile(
              title: Text('Assistance'),
              onTap: () {
                //Navigator.of(context).pushNamed("/InterventionListPage");
                Navigator.push(context, MaterialPageRoute(builder: (context) => AssistancePage()));
              },
            ),
            ListTile(
              title: Text('Nous contacter'),
              onTap: () {
                //Navigator.of(context).pushNamed("/InterventionListPage");
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),            
            ListTile(
              title: Text('A Propos'),
              onTap: () {
                //Navigator.of(context).pushNamed("/InterventionListPage");
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => APropos()));
              },
            ),
          ],
        ),
      );

  }
}