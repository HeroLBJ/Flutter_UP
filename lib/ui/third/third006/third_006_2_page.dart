import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';

class Third0062Page extends StatelessWidget {
  final String bigAvatar;

  Third0062Page({this.bigAvatar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, 'Hero动画2'),
      body: Container(
          margin: EdgeInsets.all(30),
          child: Hero(
              tag: bigAvatar,
              child: Image.network(bigAvatar, fit: BoxFit.cover))),
    );
  }
}
