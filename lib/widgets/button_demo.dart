import 'package:flutter/material.dart';

/**

按钮组件  

RaisedButton  
一个凸起材质的按钮
  背景颜色:
    color
    RaisedButton(
      color: Colors.blue,
    ),

  按钮形状，默认矩形
    shape：
      CircleBorder 圆形
      StadiumBorder 圆角
      RoundedRectangleBorder 矩形
    RaisedButton(
      shape: CircleBorder(),
    ),

  点击背景时动画效果颜色
    splashColor
    RaisedButton(
      splashColor: Colors.red,
    ),

ElevatedButton

FlatButton  
扁平的按钮

RawMaterialButton  

TextButton  

*/

class ButtonWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Text('RaisedButton', style: TextStyle(color: Colors.blueAccent),),
          ),
          Container(
            width: 200.0,
            // height: 100,
            // margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: RaisedButton(
              // borderRadius: BorderRadius.circular(10),
              color: Colors.blue, // 按钮背景颜色
              focusColor: Colors.green,
              shape: BeveledRectangleBorder(),
              // shape: StadiumBorder(),
              // shape: RoundedRectangleBorder(),  // 按钮的形状
              // shape: CircleBorder(),  // 按钮的形状
              splashColor: Colors.red, // 点击背景时动画效果颜色
              onPressed: () {},
              // elevation: 100,
              child: Text('click me RaisedButton'),
            )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Text('禁用效果： 设置onPressed为null可禁用按钮，按钮不可点击背景为灰色', style: TextStyle(color: Colors.blueAccent),),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: null,
            child: Text('click me RaisedButton'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Text('FlatButton', style: TextStyle(color: Colors.grey),),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('click me FlatButton'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Text('RawMaterialButton', style: TextStyle(color: Colors.blueAccent),),
          ),
          RawMaterialButton(
            shape: BeveledRectangleBorder(),
            fillColor: Colors.yellow,
            onPressed: () {},
            child: Text('RawMaterialButton 1'),
          ),
          RawMaterialButton(
            shape: BeveledRectangleBorder(),
            splashColor: Colors.red,  // 按钮背景颜色
            elevation: 50,
            onPressed: () {},
            child: Text('RawMaterialButton 2'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Text('ElevatedButton ', style: TextStyle(color: Colors.blueAccent),),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ElevatedButton'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Text('TextButton ', style: TextStyle(color: Colors.blueAccent),),
          ),
          TextButton(
            onPressed: () {},
            child: Text('TextButton'),
          ),
        ],
      )
    );
  }
}