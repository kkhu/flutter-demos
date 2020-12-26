import 'package:flutter/material.dart';
import 'package:flutter_demos/pages/text_demo.dart';
import 'package:flutter_demos/pages/container_demo.dart';
import 'package:flutter_demos/pages/image_demo.dart';
import 'package:flutter_demos/pages/decoratedbox_demo.dart';
import 'package:flutter_demos/pages/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/textDemo': (context) => TextDemo(),
        '/containerDemo': (context) => ContainerDemo(),
        '/imageDemo': (context) => ImageDemo(),
        '/decoratedBoxDemo': (context) => DecoratedBoxDemo(),
        '/listViewDemo': (context) => ListViewDemo(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          RaisedButton(
            child: Text('Text Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/textDemo');
            },
          ),
          RaisedButton(
            child: Text('Container Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/containerDemo');
            },
          ),
          RaisedButton(
            child: Text('Image Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/imageDemo');
            },
          ),
          RaisedButton(
            child: Text('DecoratedBox Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/decoratedBoxDemo');
            },
          ),
          RaisedButton(
            child: Text('ListView Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/listViewDemo');
            },
          ),
        ],
      )
    );
  }
}
