import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';

/// 使用AnimationWidget优化
class Third005Page2 extends StatefulWidget {
  @override
  _Third005Page2State createState() => _Third005Page2State();
}

/// 如果有多个AnimationController则需要使用TickerProviderStateMixin
class _Third005Page2State extends State<Third005Page2>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    CurvedAnimation curved =
        CurvedAnimation(parent: _animationController, curve: Curves.bounceIn);
    _animation = Tween(begin: 0.0, end: 300.0).animate(curved);
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
      body: IconWidget(animation: _animation),
    );
  }
}

/// 使用AnimatedWidget简化动画代码
/// 1、不用为动画这是监听addListener() setState
class IconWidget extends AnimatedWidget {
  IconWidget({Animation<double> animation}):super(listenable:animation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;
    return Center(
      child: Icon(Icons.flag, size: animation.value,color: Colors.orangeAccent),
    );
  }
}
