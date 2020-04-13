import 'package:chemistry/helper/color.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CREAM_WHITE,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      // color: Colors.redAccent,
    );
  }
}
