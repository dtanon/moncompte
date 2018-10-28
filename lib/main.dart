import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      //"/": (BuildContext context) => new HomePage(),
      "/SecondPage": (BuildContext context) => new SecondPage()
    }
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      //appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.deepOrange,),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            //image: new AssetImage("assets/images/real_pixel.jpg"),
            image: new NetworkImage('https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true'),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.redAccent),
                iconSize: 70.0,
                /**TODO: //remplacer pushNamed par pushReplacementName */
                onPressed: () {Navigator.of(context).pushNamed("/SecondPage");},
              ),
              new Text("Home")
            ],
          ),
        ),
      ),

    );
  }
}


class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home"), backgroundColor: Colors.deepOrange,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.redAccent),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/SecondPage");},
              ),
              new Text("Home")
            ],
          ),
        ),
      ),

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
