import 'package:flutter/material.dart';
import 'package:flutter_up/tool/ColorTool.dart';

class SafeAreaPage extends StatefulWidget {
  @override
  _SafeAreaPageState createState() => _SafeAreaPageState();
}

class _SafeAreaPageState extends State<SafeAreaPage> {
  bool _isSafeArea = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isSafeArea
          ? SafeArea(
              // 安全区域控件
              top: true,
              left: true,
              right: true,
              bottom: true,
              minimum: EdgeInsets.all(0),
              maintainBottomViewPadding: false,
              child: _buildChild(),
            )
          : _buildChild(),
    );
  }

  _buildChild() {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          color: ColorTool.randomColor(),
          child: Center(
            child: Text(
              _isSafeArea ? '当前使用SafeArea' : '当前不使用SafeArea',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _isSafeArea = !_isSafeArea;
            });
          },
          child: Text(_isSafeArea ? '不使用SafeArea' : '使用SafeArea'),
        )
      ],
    );
  }
}
