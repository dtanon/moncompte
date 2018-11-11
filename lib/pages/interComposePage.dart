import 'package:flutter/material.dart';

class InterComposePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle demande'), 
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.attachment),
              onPressed: () {
                //_select(choices[0]);
              },
            ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              //_select(choices[0]);
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.person),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Rédacteur de cette demande",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            ListTile(
              leading: Text("Sujet"),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Sujet",
                ),
              ),
            ),
            ListTile(
              //leading: Text("Sujet"),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Veuillez rédiger votre message",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ],
        ),
      )
    );
  }
}