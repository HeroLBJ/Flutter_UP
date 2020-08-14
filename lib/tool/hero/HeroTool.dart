import 'dart:math';

import 'package:flutter_up/tool/hero/Hero.dart';
import 'package:flutter_up/tool/hero/HeroData.dart';

class HeroTool {
  /// 获取所有英雄列表
  static List<Hero> getHeroList() {
    var heroList = List<Hero>();
    heroList.add(HeroData.annie()); // 001
    heroList.add(HeroData.olaf()); // 002
    heroList.add(HeroData.galio()); // 003
    heroList.add(HeroData.twist()); // 004
    heroList.add(HeroData.zhaoxin()); // 005
    heroList.add(HeroData.urgot()); // 006
    heroList.add(HeroData.leblanc()); // 007
    heroList.add(HeroData.vladimir()); // 008
    heroList.add(HeroData.fiddlesticks()); // 009
    heroList.add(HeroData.kayle()); // 010
    heroList.add(HeroData.masteryi()); // 011
    return heroList;
  }

  /// 获取随机一个英雄
  static Hero randomHero() {
    var heroList = getHeroList();
    var hero = heroList[Random().nextInt(heroList.length)];
    return hero;
  }

  /// 获取随机一个头像
  static String randomHeroAvatar({Hero hero}) {
    var randomHero;
    if (hero == null) {
      randomHero = randomHero();
    } else {
      randomHero = hero;
    }
    var skin =
        randomHero.skinList[Random().nextInt(randomHero.skinList.length)];
    return skin.skinSmallImg;
  }

  /// 获取随机一个皮肤
  static String randomHeroSkin() {
    var hero = randomHero();
    var skin = hero.skinList[Random().nextInt(hero.skinList.length)];
    return skin.skinImg;
  }

  /// 获取随机一个皮肤
  static Skin randomHeroSkinInfo() {
    var hero = randomHero();
    var skin = hero.skinList[Random().nextInt(hero.skinList.length)];
    return skin;
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
