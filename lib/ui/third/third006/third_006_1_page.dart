import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';
import 'package:flutter_up/ui/third/third006/third_006_2_page.dart';

class Third0061Page extends StatelessWidget {

  final heroList = HeroTool.getHeroList();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarTool.getAppBar(context, 'Hero动画'),
      body: Container(
        margin: EdgeInsets.all(30),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                childAspectRatio: 1),
            itemCount: heroList == null ? 0 : heroList.length,
            itemBuilder: (context, index) {
              var hero = heroList[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Third0062Page(
                            bigAvatar: hero.bigAvatar
                          )));
                },
                child: Hero(
                  tag: hero.bigAvatar,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(hero.bigAvatar),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
