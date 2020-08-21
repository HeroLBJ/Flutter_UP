import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/third/third001/third_001_page.dart';
import 'package:flutter_up/ui/third/third002/third_002_page.dart';
import 'package:flutter_up/ui/third/third003/third_003_page.dart';
import 'package:flutter_up/ui/third/third004/third_004_page.dart';
import 'package:flutter_up/ui/third/third005/third_005_page2.dart';
import 'package:flutter_up/ui/third/third005/third_005_page3.dart';
import 'package:flutter_up/ui/third/third006/third_006_1_page.dart';

import 'third005/third_005_page.dart';

class ThirdMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('ThirdMainPage --> build');
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
          contentChild('AfterLayout插件', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Third003Page()));
          }),
          contentChild('Provider的基本使用', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Third004Page()));
          }),
          contentChild('简单动画', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Third005Page3()));
          }),
          contentChild('Hero动画', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Third0061Page()));
          }),
        ],
      ),
    );
  }
}
