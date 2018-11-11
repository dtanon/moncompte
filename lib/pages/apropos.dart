import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/menu.dart';

class APropos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("A Propos"), backgroundColor: Colors.red),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Version'),
              subtitle: Text('0.0.1'),
            ),
            Divider(),
            ListTile(
              title: Text('Visiter moncompte.fr'),
              onTap: _launchURL,
            ),
            Divider(),
            ListTile(
              title: Text("Politique de confidentialité"),
              onTap: _launchPCURL,
            ),
            Divider(),
            ListTile(
              title: Text("Conditions d'utilisation"),
              onTap: _launchCGUURL,
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Impossible d'ouvrir $url";
  }
}

_launchPCURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Impossible d'ouvrir $url";
  }
}

_launchCGUURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Impossible d'ouvrir $url";
  }
}