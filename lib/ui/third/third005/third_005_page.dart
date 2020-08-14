import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';

class Third005Page extends StatefulWidget {
  @override
  _Third005PageState createState() => _Third005PageState();
}

/// 如果有多个AnimationController则需要使用TickerProviderStateMixin
class _Third005PageState extends State<Third005Page>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    CurvedAnimation curved = CurvedAnimation(parent: _animationController, curve: Curves.bounceIn);
    _animation = Tween(begin: 0.0, end: 300.0).animate(curved)
      // 固定写法
      ..addListener(() {
        setState(() {});
      });
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '简单动画'),
      body: Center(
        child: Icon(Icons.flag, size: _animation.value),
      ),
    );
  }
}
