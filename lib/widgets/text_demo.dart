import 'dart:ui';
import 'package:flutter/material.dart';

/*

文本

字体
字号
颜色

背景：
背景颜色

对齐方式：
水平对齐
垂直对齐

装饰：
上划线
中划线
下划线
文字描边

文本间距

*/

class TextWidgetDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget Demo'),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
              'I am Text Widget',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis, // 超过一行显示省略号
              maxLines: 10,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: Colors.redAccent,
                backgroundColor: Colors.blue,
                height: 2.0,
                letterSpacing: 5,
                // decoration: TextDecoration.underline,
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.blue[700],
                ),
              ),
              // Solid text as fill.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          Container(
            width: 100.0,
            height: 100.0,
            padding: const EdgeInsets.all(10.0),
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: Text(
              'I am learning Flutter, Flutter is a UI framework that based dart language',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                decoration: TextDecoration.lineThrough
              ),
            ),
          ),
          Text(
            'I am learning Flutter, Flutter is a UI framework that based dart language',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.green[800]
            ),
          ),
          Text(
            'I am learning Flutter, Flutter is a UI framework that based dart language',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xff7f4afa)
            ),
          ),
        ],
      )
    );
  }
}