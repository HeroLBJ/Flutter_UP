import 'dart:math';

import 'package:flutter_up/tool/hero/Hero.dart';
import 'package:flutter_up/tool/hero/HeroData.dart';

class HeroTool {
  /// 获取所有英雄列表
  static List<Hero> getHeroList() {
    return [
      HeroData.Annie(), // 001
      HeroData.Olaf(), //002
      HeroData.Galio(), // 003
      HeroData.Twist(), // 004
      HeroData.ZhaoXin(), // 005
      HeroData.Urgot(), // 006
      HeroData.Leblanc(), // 007
      HeroData.Vladimir(), // 008
      HeroData.Fiddlesticks(), // 009
      HeroData.Kayle(), // 010
      HeroData.Masteryi(), // 011
      HeroData.Alistar(), // 012
      HeroData.Ryze(), // 013
      HeroData.Sion(), // 014
      HeroData.Sivir(), // 015
      HeroData.Soraka(), // 016
      HeroData.Teemo(), // 017
      HeroData.Tristana(), // 018
      HeroData.Warwick(), // 019
      HeroData.Nunu(), // 020
    ];
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
