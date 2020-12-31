import 'package:flutter/material.dart';

/*

网格布局


*/

class GridViewWidgetDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Demo'),
      ),
      body: ListViewCter(),
      // body: ContainerCter(),
      // body: ColumnCter(),
    );
  }
}

class ListViewCter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Grid View in ListView'),
        Container(
          height: 400,
          child: MyGridView(),
        ),
        Container(
          height: 100,
          color: Colors.green,
        ),
        Container(
          height: 200,
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}

class ContainerCter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: MyGridView(),
    );
  }
}

class ColumnCter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Grid View'),
        Container(
          height: 400,
          child: MyGridView(),
        )
      ],
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2, // 第一行展示的个数
        mainAxisSpacing: 10, // 上下间距
        crossAxisSpacing: 10, // 左右中间
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('green'),
          ),
          Container(
            color: Colors.blue
          ),
          Container(
            color: Color(0xffcccccc)
          ),
          Container(
            color: Colors.blueGrey
          ),
          Container(
            color: Color(0xffcccccc),
            child: Image.asset('images/img1.jpg'),
          ),
          Container(
            color: Color(0xffcccccc),
            child: Image.asset('images/img2.jpg'),
          ),
          Container(
            color: Color(0xffcccccc),
            child: Image.asset('images/img3.jpg'),
          ),
          Container(
            color: Color(0xffcccccc),
            child: Image.asset('images/img4.jpg'),
          ),
          Container(
            color: Color(0xffcccccc),
            child: Image.asset('images/img5.jpg'),
          ),
          Container(
            color: Color(0xffcccccc),
            child: Image.asset('images/img6.jpg'),
          ),
          Container(
            color: Colors.yellow
          ),
          Container(
            color: Colors.purple
          ),
        ],
      );
  }
}