import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/toast/ToastTool.dart';

class Third007Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '富文本框'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildRich1Text(),
          _buildRich2Text(),
          _buildRich3Text(),
          _buildRich4Text()
        ],
      ),
    );
  }

  _buildRich1Text() {
    return RichText(
        text: TextSpan(
            text: '富文本(字体设置)',
            style: TextStyle(color: Colors.black),
            children: [
          TextSpan(
              text: '富文本',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.orange,
                  wordSpacing: 10,
                  letterSpacing: 10,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold))
        ]));
  }

  _buildRich2Text() {
    return RichText(
        text: TextSpan(
            text: '富文本(背景颜色)',
            style: TextStyle(color: Colors.black),
            children: [
          TextSpan(
              text: '富文本', style: TextStyle(backgroundColor: Colors.orange))
        ]));
  }

  _buildRich3Text() {
    return RichText(
        text: TextSpan(
            text: '富文本(特殊背景)',
            style: TextStyle(color: Colors.black),
            children: [
          TextSpan(
              text: '富文本',
              style: TextStyle(
                  decorationColor: Colors.red, backgroundColor: Colors.orange)),
          WidgetSpan(
              child: Container(
                width: 50,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(2)),
            child: Text('哈哈哈'),
          ))
        ]));
  }

  _buildRich4Text() {
    return RichText(
        text: TextSpan(
            text: '富文本(点击事件)',
            style: TextStyle(color: Colors.black),
            children: [
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () => ToastTool.showText('点击事件'),
              text: '富文本',
              style: TextStyle(backgroundColor: Colors.orange))
        ]));
  }
}
