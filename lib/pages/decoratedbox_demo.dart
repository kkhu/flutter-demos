import 'dart:ui';
import 'package:flutter/material.dart';


/*

装饰器盒子
可在DecoratedBox，Container上使用BoxDecoration

功能：
背景图片
  BoxDecoration(
    image: const DecorationImage(
      image: AssetImage('images/img1.jpg')
    )
  ),

边框
  BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1
    ),
  ),

圆角
  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  ),

渐变
 BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.green,
        Colors.red
      ]
    )
  )

*/

class DecoratedBoxDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox Demo'),
      ),
      body: Column(children: [
        // DecoratedBox(
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       color: Colors.black,
        //       width: 1
        //     ),
        //     borderRadius: BorderRadius.circular(20),
        //     image: const DecorationImage(
        //       image: AssetImage('images/img1.jpg')
        //     )
        //   ),
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     // color: Colors.green,
        //     alignment: Alignment.center,
        //     child: Text(
        //       'Decorated',
        //       style: TextStyle(
        //       color: Colors.red 
        //       )
        //     ),
        //   ),
        // ),
        Text('圆角，背景图片,边框'),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1
            ),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('images/img1.jpg')
            )
          ),
          alignment: Alignment.center,
          child: Text('Test Container decoration'),
        ),
        Text('渐变'),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Colors.red
              ]
            )
          ),
          alignment: Alignment.center,
          child: Text(
            'Test Container decoration',
            style: TextStyle(
              // color: Color(0xff000000),
              color: Colors.pink[900],
            ),
          ),
        ),
      ],
      )
    );
  }
}