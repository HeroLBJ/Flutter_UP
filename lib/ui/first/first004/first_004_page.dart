import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class First004Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heroList = HeroTool.getHeroList();
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '吸顶效果'),
      body: ListView.builder(
          itemCount: heroList.length,
          itemBuilder: (context, index) {
            var hero = heroList[index];
            return StickyHeader(
              header: Container(
                margin: EdgeInsets.only(left: 6, right: 6, top: 6),
                height: 80,
                color: Colors.teal,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(hero.avatar, width: 60, height: 60),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '${hero.firstName} ${hero.secondName}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              content: ListView.builder(
                  padding:
                      EdgeInsets.only(left: 6, top: 6, right: 6, bottom: 6),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: hero.skinList.length,
                  itemBuilder: (context, index) {
                    var skin = hero.skinList[index];
                    return Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 6),
                          child: Material(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(6),
                            child:
                                Image.network(skin.skinImg, fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 15,
                          child: Text(
                            '${skin.skinName}',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 50,
                          right: 100,
                          child: Text(
                            '${hero.backStory}',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    );
                  }),
            );
          }),
    );
  }
}
