import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';

class Fourth004Page extends StatefulWidget {
  @override
  _Fourth004PageState createState() => _Fourth004PageState();
}

class _Fourth004PageState extends State<Fourth004Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '所有英雄皮肤'),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 1.96,
          children: _gridChild(),
        ),
      ),
    );
  }

  _gridChild() {
    List<Widget> list = [];
    HeroTool.getHeroSkin().forEach((element) {
      list.add(Image.network(
        element,
        fit: BoxFit.cover,
      ));
    });
    return list;
  }
}
