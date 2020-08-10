import 'dart:math';

import 'package:flutter_up/tool/hero/Hero.dart';
import 'package:flutter_up/tool/hero/HeroData.dart';

class HeroTool {
  /// 获取所有英雄列表
  static List<Hero> getHeroList() {
    var heroList = List<Hero>();
    heroList.add(HeroData.annie());
    heroList.add(HeroData.olaf());
    return heroList;
  }

  /// 获取随机一个英雄
  static Hero randomHero() {
    var heroList = getHeroList();
    var hero = heroList[Random().nextInt(heroList.length - 1)];
    return hero;
  }

  /// 获取所有英雄头像
  static List<String> getHeroAvatar({bool isBig = false}) {
    List<String> list = [];
    var heroList = getHeroList();
    heroList.forEach((element) {
      list.add(isBig ? element.bigAvatar : element.avatar);
    });
    return list;
  }

  /// 获取所有英雄皮肤
  static List<String> getHeroSkin({bool isBig = true}) {
    List<String> list = [];
    var heroList = getHeroList();
    heroList.forEach((hero) {
      hero.skinList.forEach((skin) {
        list.add(isBig ? skin.skinImg : skin.skinSmallImg);
      });
    });
    return list;
  }
}
