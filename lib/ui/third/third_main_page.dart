import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/third/third001/third_001_page.dart';
import 'package:flutter_up/ui/third/third002/third_002_page.dart';

class ThirdMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter学习',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          contentChild('SliverAppBar基本使用', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Third001Page()));
          }),
          contentChild('SliverAppBar滑动动画', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Third002Page()));
          }),
        ],
      ),
    );
  }
}
