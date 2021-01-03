import 'package:flutter/material.dart';

/*

Form表单组件  
文本框
密码框
单选框
复选框
下拉列表



最大长度
maxLength

密码框
obscureText: true

注意:
TextFormField 组件不可直接在Row组件里，如果需要直接放到Row需要用Container, SizedBox组件包裹 不然会报错

*/

class FormWidgetDemo extends StatefulWidget {
  @override
  _FormWidgetDemo createState() => _FormWidgetDemo();
}

enum Gender { male, female }
class _FormWidgetDemo extends State<FormWidgetDemo> {
  
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  String username = '';
  String phone;
  String password;

  Gender _gender = Gender.male;

  final formController = TextEditingController();

  @override
  void initState() {
    super.initState();
    formController.addListener(handlerField);
    print('form demo: initState');
  }

  @override
  void dispose() {
    super.dispose();
    formController.removeListener(handlerField);
    print('form demo: dispose');
  }
  
  handlerField() {
    // username = formController.text;
    // print('handler formController= $formController');
    print('handler filed= ${formController.text}');
    print('handler filed username= $username');
  }

  save() {

  }

  submit() {
    var form = formKey.currentState;
    form.save();

    // return showDialog(
    //   context: context,
    //   builder: (context) {
    //     return AlertDialog(
    //       // Retrieve the text the user has entered by using the
    //       // TextEditingController.
    //       content: Text('hahaha... $username'),
    //     );
    //   },
    // );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Demo'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
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
            Row(
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('UserName:'),
                ),
                Expanded(
                  child:  Container(
                    width: double.infinity,
                    height: 50,
                    child:  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Please enter your user name',
                        // border: OutlineInputBorder(),
                        border: UnderlineInputBorder(),
                        // border: InputBorder.none,
                      ),
                      maxLength: 20,
                      onChanged: (value) {
                        print('name $value');
                        // username = value;
                      },
                      autofocus: true,
                      controller: formController,
                      onSaved: (value) {
                        // username = value;
                      },
                      onFieldSubmitted: (value) {
                        setState(() {
                          username = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('Gender:'),
                ),
                Expanded(
                  child: Row(children: [
                    Radio(
                      value: Gender.male,
                      onChanged: (Gender value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      groupValue: _gender,
                    ),
                    Text('male'),
                    Radio(
                      value: Gender.female,
                      onChanged: (Gender value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                      groupValue: _gender,
                    ),
                    Text('female')
                  ],) 
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('Phone:'),
                ),
                Expanded(
                  child:  Container(
                    width: double.infinity,
                    height: 50,
                    child:  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Please enter your phone number',
                        // border: OutlineInputBorder(),
                        border: UnderlineInputBorder(),
                      ),
                      // autofocus: true,
                      keyboardType: TextInputType.phone,
                      maxLength: 11,
                      onSaved: (value) {
                        
                      },
                      onFieldSubmitted: (value) {
                        setState(() {
                          phone = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text('Password:'),
                ),
                Expanded(
                  child:  Container(
                    width: double.infinity,
                    height: 50,
                    child:  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Please enter your password',
                        // border: OutlineInputBorder(),
                        border: UnderlineInputBorder(),
                      ),
                      obscureText: true,
                      obscuringCharacter: '*',
                      maxLength: 20,
                      onChanged: (value) {
                        // password = value;
                      },
                      onSaved: (value) {
                        // password = value;
                      },
                      onFieldSubmitted: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  // Scaffold.of(context).showSnackBar(SnackBar(content: Text('info'),));
                  submit();
                },
                child: Text('Submit'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 50, 10, 0),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text('username: $username'),
                  Text('phone   : $phone'),
                  Text('password: $password'),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
