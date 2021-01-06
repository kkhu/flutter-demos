import 'package:flutter/material.dart';

/*

## Form表单组件  
文本框
  TextFormField()

密码框
  TextFormField(
    obscureText: true,
  )

单选框
  Radio(
    value: Gender.male,
  ),

复选框
  Checkbox(
    value: false
  )

下拉列表
  PopupMenuButton<WhyFarther>(
    // 占位显示
    child: Container(
      child: Text('请选择'),
    ), 
    initialValue: WhyFarther.bjs, // 下拉列表默认值
    // 下拉列表
    itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
      const PopupMenuItem<WhyFarther>(
        value: WhyFarther.gds,
        child: Text('广东省'),
      ),
      const PopupMenuItem<WhyFarther>(
        value: WhyFarther.hns,
        child: Text('湖南省'),
      ),
    ],
  ),


## 表单设置
最大长度
maxLength

电话号码键盘
keyboardType: TextInputType.phone,

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

// This is the type used by the popup menu below.
enum WhyFarther { gds, hns, hbs, bjs }

class _FormWidgetDemo extends State<FormWidgetDemo> {
  
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  String username = '';
  String _phone;
  String password;
  Gender _gender = Gender.male;
  WhyFarther _selection = WhyFarther.gds;

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
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // Retrieve the text the user has entered by using the
          // TextEditingController.
          content: Text('username=$username gender=$_gender phone=$_phone password=$password city=$_selection'),
        );
      },
    );
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
            // UserName
            Row(
              children: [
                FormItemLabel('UserName:'),
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
            // Gender
            Row(
              children: [
                FormItemLabel('Gender:'),
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
            // Phone
            Row(
              children: [
                FormItemLabel('Phone:'),
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
                      keyboardType: TextInputType.phone, // 手机号码输入键盘
                      maxLength: 11,  // 最大可输入长度
                      onSaved: (value) {
                        
                      },
                      onFieldSubmitted: (value) {
                        setState(() {
                          _phone = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            // Password
            Row(
              children: [
                FormItemLabel('Password:'),
                Expanded(
                  child:  Container(
                    width: double.infinity,
                    height: 50,
                    child:  TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Please enter your password', // 占位提示语
                        // border: OutlineInputBorder(), // 外边框线
                        border: UnderlineInputBorder(), // 下划线边框
                      ),
                      obscureText: true, // 密码
                      obscuringCharacter: '*', // 密码符
                      maxLength: 20, // 最大可输入长度
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
            // City
            Row(
              children: [
                FormItemLabel('City:'),
                Container(
                  width: 200,
                  child: PopupMenuButton<WhyFarther>(
                    shape: RoundedRectangleBorder(), // 下拉列表形状
                    // color: Colors.blue, // 下拉列表背景颜色
                    // 选择回调
                    onSelected: (WhyFarther result) { setState(() { _selection = result; }); },
                    // 占位显示
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Text('请选择'),
                    ), 
                    initialValue: WhyFarther.bjs, // 下拉列表默认值
                    // 下拉列表
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.gds,
                        child: Text('广东省'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.hns,
                        child: Text('湖南省'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.hbs,
                        child: Text('湖北省'),
                      ),
                      const PopupMenuItem<WhyFarther>(
                        value: WhyFarther.bjs,
                        child: Text('北京市'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Hobbies
            Row(
              children: [
                FormItemLabel('hobbies:'),
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.blue, // 选中时的背景颜色
                        checkColor: Colors.white, // 选中时勾的颜色
                        value: true, // 是否选中
                        onChanged: (value) {},
                      ),
                      Text('song'),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text('cate'),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text('travel'),
                    ],
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
            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 50, 10, 0),
            //   alignment: Alignment.topLeft,
            //   child: Column(
            //     children: [
            //       Text('username: $username'),
            //       Text('phone   : $phone'),
            //       Text('password: $password'),
            //     ],
            //   ),
            // )
          ],
        )
      ),
    );
  }
}

// 表单元素Label
class FormItemLabel extends StatelessWidget {
  final String name;
  FormItemLabel(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Text(name), 
    );
  }
}
