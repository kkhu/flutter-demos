import 'package:flutter/material.dart';

/*

Table组件
Table和GridView差别，Table不能滚动


*/

class TableWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Demo'),
      ),
      body: Table(
        children: [
          TableRow(
            children: [
              Container(
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text('green'),
              ),
              Container(
                height: 150,
                color: Colors.blue,
                child: Text('blue'),
              ),
            ]
          ),
          TableRow(
            children: [
              Container(
                height: 200,
                color: Color(0xffcccccc),
                child: Image.asset('images/img1.jpg'),
              ),
              Container(
                height: 200,
                color: Color(0xffcccccc),
                child: Image.asset('images/img2.jpg'),
              ),
            ],
          )
        ],
      )
    );
  }
}