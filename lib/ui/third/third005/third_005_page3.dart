import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ColorTool.dart';

/// 使用AnimationWidget优化
class Third005Page3 extends StatefulWidget {
  @override
  _Third005Page3State createState() => _Third005Page3State();
}

/// 如果有多个AnimationController则需要使用TickerProviderStateMixin
class _Third005Page3State extends State<Third005Page3>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 12), vsync: this);
    CurvedAnimation curved =
        CurvedAnimation(parent: _animationController, curve: Curves.bounceIn)
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              _animationController.forward(from: 0);
            } else if (status == AnimationStatus.completed) {
              _animationController.reverse();
            }
          });
    _animation = Tween(begin: 0.0, end: 360.0).animate(curved);
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
        child: AnimatedBuilder(
            animation: _animation,
            child:
                Icon(Icons.wb_sunny, color: ColorTool.randomColor(), size: 64),
            builder: (context, child) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildChildBottomRight(_animation.value,child),
                          _buildChildBottom(_animation.value,child),
                          _buildChildBottomLeft(_animation.value,child)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildChildRight(_animation.value,child),
                          _buildChild(_animation.value),
                          _buildChildLeft(_animation.value,child)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildChildTopRight(_animation.value,child),
                          _buildChildTop(_animation.value, child),
                          _buildChildTopLeft(_animation.value,child)
                        ],
                      )
                    ],
                  ),
                )),
      ),
    );
  }

  Widget _buildChild(double value) {
    return Transform.rotate(
        angle: value,
        child: Icon(Icons.wb_sunny, color: ColorTool.randomColor(), size: 64));
  }

  Widget _buildChildTopLeft(double value, Widget child) {
    return Transform.translate(offset: Offset(-value, -value), child: child);
  }

  Widget _buildChildTopRight(double value, Widget child) {
    return Transform.translate(offset: Offset(value, -value), child: child);
  }

  Widget _buildChildBottomLeft(double value, Widget child) {
    return Transform.translate(offset: Offset(-value, value), child: child);
  }

  Widget _buildChildBottomRight(double value, Widget child) {
    return Transform.translate(offset: Offset(value, value), child: child);
  }

  Widget _buildChildTop(double value, Widget child) {
    return Transform.translate(offset: Offset(0, -value), child: child);
  }

  Widget _buildChildRight(double value, Widget child) {
    return Transform.translate(offset: Offset(value, 0), child: child);
  }

  Widget _buildChildLeft(double value, Widget child) {
    return Transform.translate(offset: Offset(-value, 0), child: child);
  }

  Widget _buildChildBottom(double value, Widget child) {
    return Transform.translate(offset: Offset(0, value), child: child);
  }
}
