import 'package:flutter/material.dart';
import 'package:flutter_up/tool/ImageTool.dart';

class ThirdMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '无聊的编码',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Image.network(ImageTool.img01),
    );
  }
}