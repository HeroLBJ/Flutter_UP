import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/fourth/fourth_001_page.dart';

import 'fourth_002_page.dart';
import 'fourth_003_page.dart';
import 'fourth_004_page.dart';

class FourthMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '英雄联盟',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          contentChild('英雄默认头像', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth001Page()));
          }),
          contentChild('所有英雄头像', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth002Page()));
          }),
          contentChild('英雄默认皮肤', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth003Page()));
          }),
          contentChild('所有英雄皮肤', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth004Page()));
          }),
        ],
      ),
    );
  }
}
