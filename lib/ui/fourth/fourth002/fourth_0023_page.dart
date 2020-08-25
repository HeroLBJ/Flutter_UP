import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/Hero.dart' as Hero;
import 'package:flutter_up/tool/hero/HeroTool.dart';
import 'package:flutter_up/ui/widget/image/ImageView.dart';

class Fourth0023Page extends StatefulWidget {
  @override
  _Fourth0023PageState createState() => _Fourth0023PageState();
}

class _Fourth0023PageState extends State<Fourth0023Page> {
  @override
  Widget build(BuildContext context) {
    var heroList = HeroTool.getHeroList();
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '英雄默认皮肤'),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: 1.96,
            ),
            itemCount: heroList.length,
            itemBuilder: (context, index) => _buildChild(heroList[index])),
      ),
    );
  }

  _buildChild(Hero.Hero hero) {
    return ImageView(
      imageUrl: hero.bigAvatar,
      circular: 5,
      onTop: () {},
    );
  }
}
