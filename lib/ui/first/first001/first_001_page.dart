import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ColorTool.dart';

/// 带动画的TabBar
class First001Page extends StatefulWidget {
  @override
  _First001PageState createState() => _First001PageState();
}

class _First001PageState extends State<First001Page>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;
  List<String> _titleList = ['玉龙雪山', '雷峰塔', '泸沽湖'];

  @override
  void initState() {
    super.initState();
    _controller = TabController(
        initialIndex: _currentIndex, length: _titleList.length, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '带动画的TabBar'),
      body: Column(
        children: <Widget>[_buildTabBar(), _buildBody()],
      ),
    );
  }

  _buildTabBar() {
    TextStyle activeStyle =
        TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 18);
    TextStyle defaultStyle = TextStyle(color: Colors.black,fontSize: 14);
    return TabBar(
      controller: _controller,
      tabs: _buildTabBarChild(),
      labelStyle: activeStyle,
      labelColor: Colors.orange,
      unselectedLabelStyle: defaultStyle,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

  List<Tab> _buildTabBarChild() {
    List<Tab> tabList = [];
    for (int i = 0; i < _titleList.length; i++) {
      tabList.add(Tab(
        text: _titleList[i],
      ));
    }
    return tabList;
  }

  _buildBody() {
    var child =
        TabBarView(controller: _controller, children: _buildBodyChild());
    return Expanded(child: child);
  }

  _buildBodyChild() {
    List<Widget> bodyList = [];
    for (int i = 0; i < _titleList.length; i++) {
      bodyList.add(Container(
        color: ColorTool.randomColor(),
        child: Center(
          child: Text(
            _titleList[i],
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ));
    }
    return bodyList;
  }
}
