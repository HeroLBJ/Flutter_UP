import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';
import 'package:flutter_up/ui/second/second001/second_001_page.dart';
import 'package:provider/provider.dart';

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
          contentChild('Sliver系列', () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Second001Page()));
          }),
          contentChild('PageView+Transform', () {}),
          contentChild('自定义TabBar', () {}),
          contentChild('UI-4', () {}),
          contentChild('UI-5', () {}),
        ],
      ),
    );
  }
}
