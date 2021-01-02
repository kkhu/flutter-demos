import 'dart:ui';
import 'package:flutter/material.dart';

/*

容器组件

*/

class ContainerWidgetDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container demo')
      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        color: Colors.grey,
        alignment: Alignment.center,
        // alignment: Alignment.centerRight,
        // alignment: Alignment.topCenter,
        child: Text(
          'This is Container Demo, Try it now!',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            backgroundColor: Colors.lightBlue
          ),
        ),
      )
    );
  }
}