/*
* CustomScrollView
*   physics: 默认效果 BouncingScrollPhysics() ListView 没有数据时下拉效果
*             ClampingScrollPhysics() // ListView 没有数据时下拉无效果
*   SliverAppBar(
*     pinned:
*     floating:
*     expandedHeight: 扩展高度
*     flexibleSpace:FlexibleSpaceBar(
*       background:
*     )
*   )
*
*   Divider() // 横线
*
* Listener( // 监听滑动
*   onPointerMove:(result){}
* )
*
* 如何在页面还没有显示时，提前预知界面高度
*
* 界面高度定制化、动态且无法预知界面高度
*
* PreferredSize
*
* after_layout
*   - with AfterLayoutMixin
*
*   void afterFirstLayout(BuildContext context){
*     // 获取一个组件的高度
*     RenderBox box = context.findRenderObject();
*     double height = box.getMaxIntrinsicHeight(MediaQuery.of(context).size.width);
*     Size size = box.size; // 获取一个当前已被run的部件高度
*     widget.updateHeight(height);
*   }
* */

import 'package:flutter/material.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';

class Third002Page extends StatefulWidget {
  @override
  _Third002PageState createState() => _Third002PageState();
}

class _Third002PageState extends State<Third002Page>
    with TickerProviderStateMixin {
  double picHeight = 0; // 图片高度
  double lastY = 0; // 上一次的位置

  AnimationController animationController;
  Animation<double> animation;
  String heroImg = HeroTool.randomHeroSkin();

  switchPicHeight(double distance) {
    if (lastY == 0) {
      lastY = distance;
    }
    picHeight += distance - lastY;
    if (picHeight > 160) {
      picHeight = 160;
    }
    setState(() {
      picHeight = picHeight;
      lastY = distance;
    });
  }

  runAnimate() {
    lastY = 0;
    animation = Tween(begin: picHeight, end: 0.0).animate(animationController)
      ..addListener(() {
        setState(() {
          picHeight = animation.value;
        });
      });
    // from: 0 从0开始，因为每次都调用，故必须设置
    animationController.forward(from: 0);
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween(begin: 0.0, end: 0.0).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerUp: (_) {
          runAnimate();
        },
        onPointerMove: (event) {
          switchPicHeight(event.position.dy);
        },
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            _buildSliverAppBar(),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.teal,
                child: Text(
                  '$index',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              );
            }, childCount: 30))
          ],
        ),
      ),
    );
  }

  _buildSliverAppBar() {
    return SliverAppBar(
      pinned: true,
      // 保留一个Title
      floating: true,
      // 下拉时会立即显示SliverAppBar
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          }),
      expandedHeight: 160 + picHeight,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('SliverAppBar动画', style: TextStyle(color: Colors.white)),
        background: _buildSliverAppBarChild(),
      ),
    );
  }

  _buildSliverAppBarChild() {
    return Stack(
      children: <Widget>[
        Image.network(heroImg,
            fit: BoxFit.cover, width: double.infinity, height: 190 + picHeight),
        Positioned(
          right: 30,
          top: 70 + picHeight / 4,
          child: Container(
            width: 60 + picHeight / 5,
            height: 60 + picHeight / 5,
            child: CircleAvatar(
              backgroundImage: NetworkImage(heroImg),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 70 + picHeight / 4,
          child: Container(
            width: 60 + picHeight / 5,
            height: 60 + picHeight / 5,
            child: CircleAvatar(
              backgroundImage: NetworkImage(heroImg),
            ),
          ),
        )
      ],
    );
  }
}
