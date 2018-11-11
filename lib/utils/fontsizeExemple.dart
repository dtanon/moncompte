import 'package:flutter/material.dart';
import './menu.dart';

class FontSizeExemple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("Font size"), backgroundColor: Colors.red),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('body1', style: Theme.of(context).textTheme.title),
            Text('body2', style: Theme.of(context).textTheme.body2),
            Text('button', style: Theme.of(context).textTheme.button),
            Text('caption', style: Theme.of(context).textTheme.caption),
            Text('display1', style: Theme.of(context).textTheme.display1),
            Text('display2', style: Theme.of(context).textTheme.display2),
            Text('display3', style: Theme.of(context).textTheme.display3),
            Text('display4', style: Theme.of(context).textTheme.display4),
            Text('title', style: Theme.of(context).textTheme.title),
            Text('subhead', style: Theme.of(context).textTheme.subhead),
            Text('headline', style: Theme.of(context).textTheme.headline),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}