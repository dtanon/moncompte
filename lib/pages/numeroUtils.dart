import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class NumeroUtils extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Numéros utiles / Assistance'), backgroundColor: Colors.red,),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            //RM :  Agence :  BORDEAUX 
            //Suivi Client
            //service technique
            const ListTile(
              leading: Icon(Icons.phone_iphone),
              title: Text('Responsable marquetting'),
              subtitle: Text('Stephanie Quinet : 06 00 00 00 00'),
              //onTap: UrlLauncher.launch("tel://21213123123"),
            ),
            ListTile(
              leading: Icon(Icons.phone_iphone),
              title: Text('Suivi Client'),
              subtitle: Text('Morgane Rodriguez : 06 00 00 00 00'),
            ) ,
            ListTile(
              leading: Icon(Icons.phone_iphone),
              title: Text('Agence bordeaux'),
              subtitle: Text('06 00 00 00 00'),
            ) ,
            ListTile(
              leading: Icon(Icons.phone_iphone),
              title: Text('Service technique'),
              subtitle: Text('06 00 00 00 00'),
            ) 
          ],
        )
      )
    );
  }
}