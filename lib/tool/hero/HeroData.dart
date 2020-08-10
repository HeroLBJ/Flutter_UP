import 'Hero.dart';

class HeroData {
  /// 狂战士 奥拉夫
  static Hero olaf() {
    Skin skin00 = Skin(
      skinName: '狂战士 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2000.jpg',
    );
    Skin skin01 = Skin(
      skinName: '烈焰猛士 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2001.jpg',
    );
    Skin skin02 = Skin(
      skinName: '冰河时代 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2002.jpg',
    );
    Skin skin03 = Skin(
      skinName: '铁哥们儿 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2003.jpg',
    );
    Skin skin04 = Skin(
      skinName: '五杀摇滚鼓手 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2004.jpg',
    );
    Skin skin05 = Skin(
      skinName: '黑暗骑士 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2005.jpg',
    );
    Skin skin06 = Skin(
      skinName: '牛扒狂战 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2006.jpg',
    );
    Skin skin07 = Skin(
      skinName: 'SKT T1 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2015.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2015.jpg',
    );
    Skin skin08 = Skin(
      skinName: '屠龙勇士 奥拉夫',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big2016.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small2016.jpg',
    );

    var P = SkillInfo(
        skillName: '狂战之怒',
        skillDetail: '奥拉夫每损失1%的生命值，就会增加1%的攻击速度。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/Olaf_Passive.png');
    var Q = SkillInfo(
        skillName: '逆流投掷',
        skillDetail:
            '奥拉夫将战斧投至目标区域，对所有被战斧穿过的敌人造成伤害并减速。如果奥拉夫捡起斧头，那么该技能冷却时间就会减少4.5秒。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/OlafAxeThrowCast.png');
    var W = SkillInfo(
        skillName: '残暴打击',
        skillDetail: '奥拉夫的攻击速度得到提升，并获得生命偷取，且他损失的生命值越多，所受的治疗效果也越多。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/OlafFrenziedStrikes.png');
    var E = SkillInfo(
        skillName: '鲁莽挥击',
        skillDetail:
            '奥拉夫以破釜沉舟之势发动进攻，对目标造成真实伤害（不受护甲与魔抗减免），同时，自身也会根据敌方所受的伤害而受到真实伤害的反噬。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/OlafRecklessStrike.png');
    var R = SkillInfo(
        skillName: '诸神黄昏',
        skillDetail: '奥拉夫暂时免疫控制技能。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/OlafRagnarok.png');

    Skill skill = Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R);

    var hero = Hero(
        id: 20200802,
        firstName: '狂战士',
        secondName: '奥拉夫',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small2000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big2000.jpg',
        skinList: [
          skin00,
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08
        ],
        labelList: ['战士', '坦克', '上单'],
        strength: Strength(
            physicsAttr: 9, magicAttr: 3, defenseAttr: 5, operateAttr: 4),
        skill: skill,
        backStory:
            '奥拉夫是一股无坚不摧的毁灭之力，战斧在手的他别无所求，只想光荣地死在战斗中。奥拉夫来自弗雷尔卓德的海岸半岛洛克法，他曾在一次占卜预言中听闻自己将安详地死去——这是懦夫的命运，也是对他们族人的莫大侮辱。于是，为了追寻另外一种结局，他在狂怒的驱动下在这片土地上暴跳横行，屠杀了数十名伟大的战士和传说中的野兽，希望能够找到能够阻止自己的对手。如今他是凛冬之爪部族残酷的执法者，希望在即将到来的大战中找到自己的终结。',
        useList: [
          '奥拉夫可以在生命垂危时组合使用狂战之怒、残暴打击和诸神黄昏，来变得不可思议地强大。',
          '激活残暴打击所获得的额外治愈能力，可以增强你的生命偷取，并从友军的治疗技能上获得更多治疗效果。'
        ],
        enemyUseList: [
          '奥拉夫生命值越低，就越危险。保留你的限制技能来解决他。',
          '在对线期阻止奥拉夫拿到他的斧头，能最大限度减少他所造成的骚扰。',
          '在诸神黄昏的持续期间里，奥拉夫防御伤害的能力会降低，但是免疫控制技能。因此，如果你无法摆脱处在诸神黄昏状态下的奥拉夫的话，就尽量和队友一起集火掉他吧。'
        ]);
    return hero;
  }

  /// 黑暗之女 安妮
  static Hero annie() {
    Skin skin00 = Skin(
        skinName: '黑暗之女 安妮',
        skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1000.jpg',
        skinSmallImg:
            'https://game.gtimg.cn/images/lol/act/img/skin/small1000.jpg');
    Skin skin01 = Skin(
        skinName: '哥特萝莉 安妮',
        skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1001.jpg',
        skinSmallImg:
            'https://game.gtimg.cn/images/lol/act/img/skin/small1001.jpg');

    Skin skin02 = Skin(
        skinName: '小红帽 安妮',
        skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1002.jpg',
        skinSmallImg:
            'https://game.gtimg.cn/images/lol/act/img/skin/small1002.jpg');

    Skin skin03 = Skin(
        skinName: '安妮梦游仙境',
        skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1003.jpg',
        skinSmallImg:
            'https://game.gtimg.cn/images/lol/act/img/skin/small1003.jpg');

    Skin skin04 = Skin(
      skinName: '舞会公主 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1004.jpg',
    );

    Skin skin05 = Skin(
      skinName: '冰霜烈焰 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1005.jpg',
    );

    Skin skin06 = Skin(
      skinName: '安伯斯与提妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1006.jpg',
    );

    Skin skin07 = Skin(
      skinName: '科学怪熊的新娘 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1007.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1007.jpg',
    );

    Skin skin08 = Skin(
      skinName: '“你看见过我的熊猫吗？” 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1008.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1008.jpg',
    );

    Skin skin09 = Skin(
      skinName: '甜心宝贝 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1009.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1009.jpg',
    );

    Skin skin10 = Skin(
      skinName: '海克斯科技 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1010.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1010.jpg',
    );

    Skin skin11 = Skin(
      skinName: '银河魔装机神 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1011.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1011.jpg',
    );

    Skin skin12 = Skin(
      skinName: '十周年纪念 安妮',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big1012.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small1012.jpg',
    );

    var P = SkillInfo(
        skillName: '嗜火',
        skillDetail: '在施放4次技能后，安妮的下一个进攻型技能将晕眩目标。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/Annie_Passive.png');
    var Q = SkillInfo(
        skillName: '碎裂之火',
        skillDetail:
            '安妮向目标投出注入了法力值的火球，对目标造成魔法伤害。如果目标死于碎裂之火，则碎裂之火消耗的法力值会返还给安妮，且碎裂之火的冷却时间减半。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/AnnieQ.png');
    var W = SkillInfo(
        skillName: '焚烧',
        skillDetail: '安妮向锥形区域施放一道烈焰，对区域内的所有敌人造成伤害。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/AnnieW.png');
    var E = SkillInfo(
        skillName: '熔岩护盾',
        skillDetail: '为安妮提供百分比伤害减免，一个爆发性的移动速度加成，并对朝她进行普通攻击的敌人造成伤害。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/AnnieE.png');
    var R = SkillInfo(
        skillName: '提伯斯之怒',
        skillDetail: '安妮召唤地狱火泰迪：提伯斯为其作战，对目标区域造成伤害，提伯斯也会攻击和烧伤站在它周围的敌人。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/AnnieR.png');

    Skill skill = Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R);

    var hero = Hero(
        id: 20200801,
        firstName: '黑暗之女',
        secondName: '安妮',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small1000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big1000.jpg',
        skinList: [
          skin00,
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08,
          skin09,
          skin10,
          skin11,
          skin12
        ],
        labelList: ['法师', "辅助", "中单"],
        strength: Strength(
            physicsAttr: 2, magicAttr: 10, defenseAttr: 3, operateAttr: 4),
        skill: skill,
        backStory:
            '既拥有危险夺命的能力，又拥有小大人儿的可爱模样，安妮是一名掌握着深不可测的占火魔法的幼女魔法师。安妮生活在诺克萨斯北边的山脚下，即使是在这种地方，她也仍然是魔法师中的异类。她与火焰的紧密关系与生俱来，最初是伴随着喜怒无常的情绪冲动出现的，不过后来她学会了如何掌握这些“好玩的小把戏”。其中她最喜欢的就是召唤她亲爱的泰迪熊提伯斯——一头狂野的守护兽。安妮已经迷失在了永恒的天真里。她在黑暗的森林中游荡，始终寻觅着能陪自己玩耍的人。',
        useList: [
          '安妮的终极必杀技和晕眩技能一起使用能够扭转局势。',
          '使用碎裂之火技能杀死小兵，可以让安妮在游戏早期打到很多钱。',
          '熔岩护盾能够有效地帮助安妮叠加嗜火技能所带来的晕眩，有时尽早升1级该技能是合算的。'
        ],
        enemyUseList: [
          '安妮召唤的巨熊提伯斯能烧伤他附近的敌方单位。切记远离被召唤出的提伯斯。',
          '召唤师技能惩戒也能够对提伯斯造成伤害。',
          '留意安妮身上白色的漩涡能量，这意味着她已经准备好施放眩晕。'
        ]);
    return hero;
  }
}
