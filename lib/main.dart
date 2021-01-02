import 'package:flutter/material.dart';
import 'package:flutter_demos/widgets/text_demo.dart';
import 'package:flutter_demos/widgets/container_demo.dart';
import 'package:flutter_demos/widgets/image_demo.dart';
import 'package:flutter_demos/widgets/decoratedbox_demo.dart';
import 'package:flutter_demos/widgets/listview_demo.dart';
import 'package:flutter_demos/widgets/gridview_demo.dart';
import 'package:flutter_demos/widgets/table_demo.dart';
import 'package:flutter_demos/widgets/flow_demo.dart';
import 'package:flutter_demos/widgets/button_demo.dart';
import 'package:flutter_demos/widgets/form_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/textWidgetDemo': (context) => TextWidgetDemo(),
        '/containerWidgetDemo': (context) => ContainerWidgetDemo(),
        '/imageWidgetDemo': (context) => ImageWidgetDemo(),
        '/decoratedBoxWidgetDemo': (context) => DecoratedBoxWidgetDemo(),
        '/listViewWidgetDemo': (context) => ListViewWidgetDemo(),
        '/gridViewWidgetDemo': (context) => GridViewWidgetDemo(),
        '/tableWidgetDemo': (context) => TableWidgetDemo(),
        '/flowWidgetDemo': (context) => FlowWidgetDemo(),
        '/buttonWidgetDemo': (context) => ButtonWidgetDemo(),
        '/formWidgetDemo': (context) => FormWidgetDemo(),
      },
      // initialRoute: '/textWidgetDemo',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false
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
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        children: [
          RaisedButton(
            child: Text('Text Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/textWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('Container Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/containerWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('Image Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/imageWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('DecoratedBox Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/decoratedBoxWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('ListView Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/listViewWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('GridView Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/gridViewWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('Table Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/tableWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('Flow Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/flowWidgetDemo');
            },
          ),
          RaisedButton(
            child: Text('Button Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/buttonWidgetDemo');
            },
          ),
           RaisedButton(
            child: Text('Form Widget Demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/formWidgetDemo');
            },
          ),
        ],
      )
    );
  }
}
