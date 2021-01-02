import 'package:flutter/material.dart';

/*

Form表单组件  


*/

class FormWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Demo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 28,
              ),
            )
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1
              ),
            ),
            child: Row(
              children: [
                Text('UserName:'),
                // TextFormField(
                //   decoration: InputDecoration(
                //     hintText: 'Please enter your user name',
                //     labelText: 'UserName:',
                //   ),
                // ),
              ],
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Please enter your user name',
              labelText: 'UserName:',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
          ),
        ],
      )
    );
  }
}