import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';

class Fourth0021Page extends StatefulWidget {
  @override
  _Fourth0021PageState createState() => _Fourth0021PageState();
}

class _Fourth0021PageState extends State<Fourth0021Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '英雄默认头像'),
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
    HeroTool.getHeroAvatar().forEach((element) {
      list.add(Image.network(element,fit: BoxFit.cover));
    });
    return list;
  }
}
