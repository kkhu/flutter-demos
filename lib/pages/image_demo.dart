import 'dart:ui';
import 'package:flutter/material.dart';


/*

图片组件
Image

加载本地图片
1.设置pubspec.yaml
2.使用Image.asset()加载项目中的图片，asset中的路径需要与pubspec.yaml中设置的一至

加载网络图片



*/

class ImageDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Demo'),
      ),
      body: ListView(children: [
        Column(
          children: [
            Text('加载本地图片 contain'),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.grey,
              child: Image.asset(
                'images/img2.jpg',
                // alignment: Alignment.topCenter,
                fit: BoxFit.contain,
                // color: Colors.redAccent,
                filterQuality: FilterQuality.low,
                color: Colors.green,
                colorBlendMode: BlendMode.color,
              ),
            ),
            Text('加载本地图片 cover'),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.grey,
              child: Image.asset(
                'images/img2.jpg',
                // alignment: Alignment.topCenter,
                fit: BoxFit.cover
              ),
            ),
            Text('加载本地图片 fill'),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.grey,
              child: Image.asset(
                'images/img2.jpg',
                // alignment: Alignment.topCenter,
                // fit: BoxFit.fill,
                width: 100.0,
                height: 100.0,
              ),
            ),
            Text('加载网络图片'),
            Container(
            width: 200.0,
              height: 200.0,
              color: Colors.grey,
              child: Image.network('https://vuejs.org/images/logo.png')
            ),
          ],
        )
        ]
      )
    );
  }
}