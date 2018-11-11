import 'package:flutter/material.dart';

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("../assets/images/real_pixel.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      //height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 150.0, bottom: 50.0),
            child: Center(
              child: new Column(
                children: <Widget>[
                  Container(
                    height: 128.0,
                    width: 128.0,
                    decoration: new BoxDecoration(
                      //shape: BoxShape.circle,
                      image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                        "https://i.imgur.com/BoN9kdC.png")
                      )
                      
                    )
                  ),
                  /*new Container(
                    padding: const EdgeInsets.all(16.0),
                    child: new Text("Samarth Agarwal"),
                  ),*/
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}