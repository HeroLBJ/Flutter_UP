import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';

class SecondMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '精美UI',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          contentChild('Sliver系列', () {}),
          contentChild('PageView+Transform', () {}),
          contentChild('自定义TabBar', () {}),
          contentChild('UI-4', () {}),
          contentChild('UI-5', () {}),
        ],
      ),
    );
  }
}