import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/fourth/fourth01/fourth_001_page.dart';
import 'fourth02/fourth_002_page.dart';

class FourthMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '项目',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          contentChild('海马汽车', () => Fourth001Page()),
          contentChild('英雄联盟', () => Fourth002Page())
        ],
      ),
    );
  }
}
