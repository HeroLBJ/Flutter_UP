import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ColorTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';

class ExpandedPage extends StatelessWidget {
  final List<double> widthList = [60, 70, 80, 90, 100, 110, 120];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, 'Expanded的使用'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height * 3,
          child: Column(
            children: <Widget>[
              Expanded(flex: 1, child: _wrapContent),
              Expanded(flex: 1, child: _wrapContent),
              Expanded(flex: 1, child: _wrapContent),
              Expanded(flex: 2, child: _wrapContent),
              Expanded(flex: 2, child: _wrapContent),
              Expanded(flex: 3, child: _wrapContent),
              Expanded(flex: 2, child: _wrapContent),
              Expanded(flex: 2, child: _wrapContent),
              Expanded(flex: 1, child: _wrapContent),
              Expanded(flex: 1, child: _wrapContent),
              Expanded(flex: 1, child: _wrapContent)
            ],
          ),
        ),
      ),
    );
  }

  get _wrapContent {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _listChild,
      ),
    );
  }

  get _listChild {
    List<Widget> list = [];
    var randomHero = HeroTool.randomHero();
    randomHero.skinList.forEach((skin) {
      list.add(Container(
        width: widthList[Random().nextInt(widthList.length)],
        height: double.infinity,
        color: ColorTool.randomColor(),
      ));
    });
    return list;
  }
}
