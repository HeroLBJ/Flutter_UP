import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/fourth/fourth01/fourth_001_page.dart';
import 'fourth002/fourth_002_page.dart';
import 'fourth003/fourth_003_page.dart';

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
          contentChild('英雄联盟', () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Fourth002Page()));
          }),
          contentChild('小部件', () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Fourth003Page()));
          })
        ],
      ),
    );
  }
}
