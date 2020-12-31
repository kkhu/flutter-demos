import 'package:flutter/material.dart';

class FlowWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow Demo'),
      ),
      body: FlowMenu(),
    );
  }
}

class FlowMenu extends StatefulWidget {
  @override
  _FlowMenu createState() => _FlowMenu();
}

class _FlowMenu extends State<FlowMenu> with SingleTickerProviderStateMixin {
  AnimationController menuAnimation;
  // final List<Widget> menuList = <Widget>[
  //   Text('Home'),
  //   Text('Set'),
  //   Text('Noti'),
  //   Text('More')
  // ];
  final List<IconData> menuList = <IconData>[
    Icons.home,
    Icons.settings,
    Icons.notifications,
    Icons.menu
  ];
  IconData lastTapped = Icons.settings;
  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this
    );
  }

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => lastTapped = icon);
    }
  }

  Widget menuItem(IconData icon) {
    final double buttonDiameter = MediaQuery.of(context).size.width / menuList.length;
    // return Container(
    //   width: 50,
    //   padding: EdgeInsets.symmetric(vertical: 8.0),
    //   margin: EdgeInsets.all(m),
    //   constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
    //   child: widget,
    // );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.orange : Colors.blue,
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        splashColor: Colors.orange,
        shape: CircleBorder(),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed
            ? menuAnimation.reverse()
            : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 40.0,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        // children: [
        //   Row(
        //     children: [
        //       Container(
        //         width: 50.0,
        //         height: 50.0,
        //         child: Image.asset(
        //           'images/img1.jpg',
        //         ),
        //       ),
        //       Container(
        //         width: 50.0,
        //         height: 50.0,
        //         child: Image.asset(
        //           'images/img2.jpg',
        //         ),
        //       ),
        //       Container(
        //         width: 50.0,
        //         height: 50.0,
        //         child: Image.asset(
        //           'images/img3.jpg',
        //         ),
        //       ),
        //     ],
        //   )
        // ]
        children: menuList
          .map<Widget>((IconData icon) => menuItem(icon),)
          .toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({this.menuAnimation}): super(repaint: menuAnimation);
  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      dx = context.getChildSize(i).width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value, 
          0, 
          0)
      );
    }
  }
}