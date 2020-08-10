import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ImageTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';

class Third001Page extends StatefulWidget {
  @override
  _Third001PageState createState() => _Third001PageState();
}

class _Third001PageState extends State<Third001Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBarTool.getAppBar(context, 'Sliver系列'),
      // 一般会将Sliver小部件放在CustomScrollView中
      // SliverSafeArea() 安全区域不会被顶部状态栏遮住
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//              centerTitle: true,
              expandedHeight: 180, // 设置一个伸展空间
              flexibleSpace: FlexibleSpaceBar(
                title: Text('FlexibleSpaceBar标题',style: TextStyle(color: Colors.white),),
                background: Image.network(HeroTool.randomHeroSkin(),fit: BoxFit.cover,),
              ),
              // pinned: true, 设置为true 表示AppBar将不会随着滑动而消失
              //  floating: true, 设置为true 表示AppBar消失时会随着滑动消失，而出现时是立刻出现，而不是等到滑动到顶部
//              title: Text('这是SliverAppBar')
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverListDemo(),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        var hero = HeroTool.randomHero();
        var skin = hero.skinList[Random().nextInt(hero.skinList.length)];
        return Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            clipBehavior: Clip.antiAlias,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(
              children: <Widget>[
                Image.network(skin.skinImg, fit: BoxFit.cover),
                Positioned(
                    left: 15,
                    top: 24,
                    child: Row(
                      children: <Widget>[
                        Material(
                          child: Image.network(
                            skin.skinSmallImg,
                            fit: BoxFit.cover,
                            width: 32,
                            height: 32,
                          ),
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        SizedBox(width: 5),
                        Text(
                          skin.skinName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Positioned(
                    top: 66,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '物理伤害：${hero.strength.physicsAttr}',
                          maxLines: 5,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '魔法伤害：${hero.strength.magicAttr}',
                          maxLines: 5,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '防御属性：${hero.strength.defenseAttr}',
                          maxLines: 5,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '操作难度：${hero.strength.operateAttr}',
                          maxLines: 5,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    )),
              ],
            ),
          ),
        );
      }, childCount: 20),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (context, index) =>
                Image.network(HeroTool.randomHeroSkin(), fit: BoxFit.cover),
            childCount: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.96));
  }
}
