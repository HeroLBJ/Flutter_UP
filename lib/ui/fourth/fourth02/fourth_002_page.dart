import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/fourth/fourth02/fourth_0021_page.dart';

import 'fourth_0022_page.dart';
import 'fourth_0023_page.dart';
import 'fourth_0024_page.dart';

class Fourth002Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '英雄联盟'),
      body: ListView(
        children: <Widget>[
          contentChild('英雄默认头像', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth0021Page()));
          }),
          contentChild('所有英雄头像', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth0022Page()));
          }),
          contentChild('英雄默认皮肤', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth0023Page()));
          }),
          contentChild('所有英雄皮肤', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Fourth0024Page()));
          }),
        ],
      ),
    );
  }
}
