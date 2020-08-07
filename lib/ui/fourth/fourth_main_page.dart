import 'package:flutter/material.dart';
import 'package:flutter_up/tool/WidgetTool.dart';

class FourthMainPage extends StatelessWidget {
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
      body: ListView(
        children: <Widget>[
          contentChild('带动画效果的TabBar', () {}),
          contentChild('画个知乎玩玩', () {}),
          contentChild('舒尔特方格', () {}),
          contentChild('舒尔特方格2Provider', () {}),
          contentChild('抖音首页', () {}),
          contentChild('底部弹框', () {}),
          contentChild('绘制自定义动画图标', () {}),
          contentChild('吸顶效果', () {}),
          contentChild('瀑布流界面', () {}),
          contentChild('轮播效果', () {}),
          contentChild('Sliver全家桶', () {}),
          contentChild('动态SliverAppBar', () {}),
          contentChild('Flutter阶段知识回顾', () {}),
          contentChild('调用相机组件', () {}),
          contentChild('访问相册', () {}),
          contentChild('录制视频', () {}),
          contentChild('动态人脸识别', () {}),
          contentChild('贴纸相机', () {}),
          contentChild('动态滤镜', () {}),
          contentChild('下拉更新，上拉加载', () {}),
          contentChild('即时通讯', () {}),
          contentChild('三角形聊天框', () {}),
          contentChild('Flutter+SignalR即时通讯', () {}),
          contentChild('自定义之时钟', () {}),
          contentChild('录制语音', () {}),
          contentChild('发送语音', () {}),
          contentChild('讯飞语音', () {}),
          contentChild('原生混编', () {}),
          contentChild('讯飞语音实测', () {}),
          contentChild('高德地图', () {}),
          contentChild('高德地图实现动态定位、动态POI', () {}),
          contentChild('聊天界面发送定位', () {}),
          contentChild('视频组件', () {}),
          contentChild('弹幕效果', () {}),
          contentChild('倍速播放', () {}),
          contentChild('主题皮肤', () {}),
          contentChild('极光推送', () {}),
          contentChild('登录界面+炫酷效果', () {}),
          contentChild('高斯模糊', () {}),
        ],
      ),
    );
  }
}
