import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Demo'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Row(children: [
            Container(
              width: 60.0,
              height: 40,
              alignment: Alignment.center,
              color: Colors.grey[300],
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
              child: Image.asset(
                'images/img2.jpg',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: 200.0,
              height: 40,
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text('name $index'),
            ),
            Container(
              width: 100.0,
              height: 40,
              alignment: Alignment.center,
              color: Colors.grey[300],
              // margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Text('item $index'),
            ),

          ],);
        }
      )
    );
  }
}
