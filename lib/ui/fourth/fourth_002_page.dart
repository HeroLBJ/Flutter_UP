import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';

class Fourth002Page extends StatefulWidget {
  @override
  _Fourth002PageState createState() => _Fourth002PageState();
}

class _Fourth002PageState extends State<Fourth002Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '所有英雄头像'),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 4,
          children: _gridChild(),
        ),
      ),
    );
  }

  _gridChild() {
    List<Widget> list = [];
    HeroTool.getHeroSkin(isBig: false).forEach((element) {
      list.add(Image.network(element,fit: BoxFit.cover,));
    });
    return list;
  }
}
