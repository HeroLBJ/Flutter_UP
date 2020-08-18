import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';

class Second0012Page extends StatelessWidget {
  final Color heroColor;

  Second0012Page({@required this.heroColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, 'hero'),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Hero(
            tag: 'hero_color',
            child: CircleAvatar(
              backgroundColor: heroColor,
            ),
          ),
        ),
      ),
    );
  }
}
