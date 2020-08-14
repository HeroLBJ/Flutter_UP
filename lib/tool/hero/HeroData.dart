import 'Hero.dart';

class HeroData {
  /// 无极剑圣 易
  static Hero masteryi() {
    Skin skin01 = Skin(
      skinName: '无极剑圣 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '暗影 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '星战 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '天人合一 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '侍魂 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11004.jpg',
    );
    Skin skin06 = Skin(
      skinName: '铁血剑豪 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11005.jpg',
    );
    Skin skin07 = Skin(
      skinName: '源计划：林 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11009.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11009.jpg',
    );
    Skin skin08 = Skin(
      skinName: '斩星魔剑 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11010.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11010.jpg',
    );
    Skin skin09 = Skin(
      skinName: '玉剑传说 无极',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11011.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11011.jpg',
    );
    Skin skin10 = Skin(
      skinName: '持胡萝卜的雪人 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11017.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11017.jpg',
    );
    Skin skin11 = Skin(
      skinName: '腥红之月 易',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big11024.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small11024.jpg',
    );

    var P = SkillInfo(
        skillName: '双重打击',
        skillDetail: '易大师每攻击数次，就会同时对目标进行2次打击。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/MasterYi_Passive1.png');
    var Q = SkillInfo(
        skillName: '阿尔法突袭',
        skillDetail:
            '易以肉眼难以发觉的速度穿梭于战场，对多个敌人造成物理伤害，同时处于不可被选取的状态下。阿尔法突袭可以暴击，并对野怪造成额外物理伤害。普通攻击可以减少阿尔法突袭的冷却时间。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/AlphaStrike.png');
    var W = SkillInfo(
        skillName: '冥想',
        skillDetail:
            '易通过集中念力来活化他的身体，从而回复生命值，并暂时减少所受的伤害。此外，易还会为双重打击充能，并暂停无极剑道和高原血统的持续时长。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/Meditate.png');
    var E = SkillInfo(
        skillName: '无极剑道',
        skillDetail: '提供额外真实伤害至普攻',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/WujuStyle.png');
    var R = SkillInfo(
        skillName: '高原血统',
        skillDetail:
            '易以超乎想象的身法进行移动，短时间内提升移动速度和攻击速度，并免疫减速效果。该技能激活期间，易在击杀掉一名敌方英雄的同时，会延长该技能的持续时间。在击杀和助攻后，也会被动地减少易其它技能的冷却时间。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/Highlander.png');

    var hero = Hero(
        id: 20200811,
        firstName: '无极剑圣',
        secondName: '易',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small11000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big11000.jpg',
        skinList: [
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
          skin11
        ],
        labelList: ['刺客', '战士', '打野'],
        strength: Strength(
            physicsAttr: 10, magicAttr: 2, defenseAttr: 4, operateAttr: 2),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '易师锤炼身体、磨砺心智，直至身心合一。尽管他将暴力作为不得已的选择，但他优雅迅猛的剑法总是让这一手段显得尤为快捷。作为无极之道最后的门徒，易大师致力于这个门派的传承，用七度洞悉目镜搜寻着最有资格的人，寻找潜在的新弟子。',
        useList: [
          '如果你在与远程玩家作战的兵线，升级冥想可以让你在线上呆得更久，比对手升级更快。',
          '早期，无极剑道在给小兵们最后一击的时候很强。',
          '试着在一名敌方英雄前使用阿尔法突袭来攻击小兵，这样在技能结束的时候，你就处于一个安全距离的位置了。'
        ],
        enemyUseList: [
          '冥想能够有效地治疗持续伤害，但易大师在游戏前期很容易被配合gank。',
          '如果易大师试图用无极剑道补兵，则连续几次攻击他，令其不得不消耗法力使用冥想回复生命值。',
          '虽然易大师在使用高原血统时不能被减速，但其它限制技能还能够阻止他。'
        ]);
    return hero;
  }

  /// 正义天使 凯尔
  static Hero kayle() {
    Skin skin01 = Skin(
      skinName: '正义天使 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small0000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '银白审判 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '末世天使 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '大天使长米迦勒 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '战场女武神 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10004.jpg',
    );
    Skin skin06 = Skin(
      skinName: '圣光审判 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10005.jpg',
    );
    Skin skin07 = Skin(
      skinName: '钢铁之翼 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10006.jpg',
    );
    Skin skin08 = Skin(
      skinName: '防爆天使 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10007.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10007.jpg',
    );
    Skin skin09 = Skin(
      skinName: '钢铁审判官 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10008.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10008.jpg',
    );
    Skin skin10 = Skin(
      skinName: '五杀摇滚女声主唱 凯尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big10009.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small10009.jpg',
    );

    var P = SkillInfo(
        skillName: '登神长阶',
        skillDetail:
            '凯尔的攻击会随着她提升等级和分配技能点而获得增强。她的羽翼将燃起圣焰，逐步提供攻击速度，移动速度，攻击距离，以及攻击附带焰浪。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/Kayle_P.png');
    var Q = SkillInfo(
        skillName: '耀焰冲击',
        skillDetail: '凯尔召出一个传送门，召唤出一把星界之剑来刺穿敌人，对命中的所有敌人造成减速、伤害和防御属性击碎效果。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/KayleQ.png');
    var W = SkillInfo(
        skillName: '星界恩典',
        skillDetail: '通过神圣的赐福，凯尔为自己和距她最近的友方英雄提供治疗和移动速度。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/KayleW.png');
    var E = SkillInfo(
        skillName: '星火符刃',
        skillDetail:
            '被动：凯尔的星界之剑，“美德”，会对她在攻击的敌人造成额外伤害。\n主动：凯尔的下次攻击将用星火重击她的目标，基于敌人的已损失生命值造成额外伤害。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/KayleE.png');
    var R = SkillInfo(
        skillName: '圣裁之刻',
        skillDetail: '凯尔让一名友方英雄免疫伤害，并号召曾经的正义星灵们用一阵神圣剑雨来纯化她目标附近的区域。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/KayleR.png');

    var hero = Hero(
        id: 20200810,
        firstName: '正义天使',
        secondName: '凯尔',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small10000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big10000.jpg',
        skinList: [
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08,
          skin09,
          skin10
        ],
        labelList: ['战士', '辅助', '中单'],
        strength: Strength(
            physicsAttr: 6, magicAttr: 7, defenseAttr: 6, operateAttr: 7),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '在符文战争最激烈的时刻，一位巨神星灵诞下了凯尔，她传承了母亲的荣耀，在圣火飞翼的承载下为了正义而战。她和孪生妹妹莫甘娜曾是德玛西亚的保护神——但凡人反反复复的失败最终让凯尔的幻想破灭，彻底抛弃了这个国度。但关于她用火焰长剑惩罚不义之徒的传说依然在流传，关于她终将回归的希望也依然在持续……',
        useList: [
          '对高伤害输出的友军使用【R圣裁之刻】可以让其进行更加自由的输出，从而扭转战局。',
          '凯尔一旦从【登神长阶】中获得远程形态，就会变得极为强悍。在此之前请稳重发育。',
          '凯尔会从攻击力和法术强度中获益良多，因此，诸如纳什之牙或海克斯科技枪刃这类的混伤装备特别适合她。'
        ],
        enemyUseList: [
          '圣裁之刻】只能让凯尔或她的友军免疫伤害。减速和晕眩技能仍可用。因此，如果他们太过激进，就诱捕他们。',
          '凯尔很脆弱，一旦她施放终极技能，则转而攻击她。',
          '凯尔在开始游戏时是一名较弱的近战英雄。尽量在她飞升成远程形态之前将她打崩。'
        ]);
    return hero;
  }

  /// 远古恐惧 费德提克
  static Hero fiddlesticks() {
    Skin skin01 = Skin(
      skinName: '远古恐惧 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '幽魂 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '联合王国 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '荒野幽灵 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '南瓜头 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9004.jpg',
    );
    Skin skin06 = Skin(
      skinName: '铁钩船长 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9005.jpg',
    );
    Skin skin07 = Skin(
      skinName: '惊悚派对 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9006.jpg',
    );
    Skin skin08 = Skin(
      skinName: '糖果使徒 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9007.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9007.jpg',
    );
    Skin skin09 = Skin(
      skinName: '重生之沙 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9008.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9008.jpg',
    );
    Skin skin10 = Skin(
      skinName: '禁卫机甲 费德提克',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big9009.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small9009.jpg',
    );

    var P = SkillInfo(
        skillName: '巫骇草人',
        skillDetail: '费德提克的饰品会被替换为【草间人】。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/FiddleSticks_Passive.png');
    var Q = SkillInfo(
        skillName: '恐惧',
        skillDetail:
            '费德提克在非战斗状态且未被敌人看见时，如果用技能对敌人造成了伤害，或者对一名敌人使用了【Q恐惧】的主动效果，都会使目标因害怕而逃跑一段时间。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/FiddleSticksQ.png');
    var W = SkillInfo(
        skillName: '五骨丰登',
        skillDetail: '费德提克从附近敌人们身上吸取生命值，在持续结束时造成额外的处决伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/FiddleSticksW.png');
    var E = SkillInfo(
        skillName: '夜割',
        skillDetail: '费德提克用它的镰刀斩击一个区域，使命中的所有敌人减速，并使斩击区域中心的敌人沉默。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/FiddleSticksE.png');
    var R = SkillInfo(
        skillName: '群鸦风暴',
        skillDetail: '一群杀人鸦盘旋于费德提克身边，每秒对范围内的所有敌方单位造成伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/FiddleSticksR.png');

    var hero = Hero(
        id: 20200809,
        firstName: '远古恐惧',
        secondName: '费德提克',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small9000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big9000.jpg',
        skinList: [
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08,
          skin09,
          skin10
        ],
        labelList: ['法师', '辅助', '打野'],
        strength: Strength(
            physicsAttr: 2, magicAttr: 9, defenseAttr: 3, operateAttr: 9),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '某物已在符文之地苏醒，远古且可怖。它潜伏于人类世界的边缘，被浓烈的妄想所吸引，以受害者的惊骇为食，人们将这永恒的恐怖之物称为费德提克。这个狂乱的拼凑之物挥舞着镰刀收割恐惧，摧毁不幸与之相逢的人的神志。当心乌鸦的声响，或是那近乎人形的怪物所发出的呓语吧……费德提克已经归来。',
        useList: ['无'],
        enemyUseList: ['无']);
    return hero;
  }

  /// 猩红收割者 费拉基米尔
  static Hero vladimir() {
    Skin skin01 = Skin(
      skinName: '猩红收割者 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '费拉基米尔伯爵',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '费拉基米尔侯爵',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '诺斯费拉图 弗拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '霹雳游侠 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8004.jpg',
    );
    Skin skin06 = Skin(
      skinName: '鲜血领主 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8005.jpg',
    );
    Skin skin07 = Skin(
      skinName: '摄魂男爵 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8006.jpg',
    );
    Skin skin08 = Skin(
      skinName: '学生会长 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8007.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8007.jpg',
    );
    Skin skin09 = Skin(
      skinName: '黑潮 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8008.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8008.jpg',
    );
    Skin skin10 = Skin(
      skinName: '黑夜使者 费拉基米尔',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big8014.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small8014.jpg',
    );

    var P = SkillInfo(
        skillName: '血色契约',
        skillDetail: '每40生命值加成给予弗拉基米尔1法术强度，每1法术强度给予弗拉基米尔1.4生命值（不会自我循环叠加）。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/VladimirP.png');
    var Q = SkillInfo(
        skillName: '鲜血转换',
        skillDetail: '弗拉基米尔从目标敌人身上偷取生命值。当弗拉基米尔的资源槽攒满后，鲜血转换将暂时获得增益，提升伤害和治疗效果。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/VladimirQ.png');
    var W = SkillInfo(
        skillName: '血红之池',
        skillDetail: '弗拉基米尔潜入血泊之中，变得不可被选取，持续2秒。血泊上的敌人被减速，同时弗拉基米尔会从他们身上吸取生命。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/VladimirSanguinePool.png');
    var E = SkillInfo(
        skillName: '血之潮汐',
        skillDetail: '弗拉基米尔消耗他的生命值来持续灌注一个蓄血库，蓄血库在释放时会对他身边的敌人造成伤害，但会被敌方单位所阻挡。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/VladimirE.png');
    var R = SkillInfo(
        skillName: '血之瘟疫',
        skillDetail:
            '弗拉基米尔令一片区域感染上剧毒瘟疫，增加受感染敌人所受的伤害。在几秒后，血之瘟疫会对被感染的敌人造成魔法伤害，并根据命中的敌方英雄数来治疗弗拉基米尔。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/VladimirHemoplague.png');

    var hero = Hero(
        id: 20200808,
        firstName: '猩红收割者',
        secondName: '费拉基米尔',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small8000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big8000.jpg',
        skinList: [
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08,
          skin09,
          skin10
        ],
        labelList: ['法师', '坦克', '上单'],
        strength: Strength(
            physicsAttr: 2, magicAttr: 8, defenseAttr: 6, operateAttr: 2),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '弗拉基米尔是一个渴望凡人鲜血的魔鬼，早在诺克萨斯帝国建立之初就开始干涉帝国的内政。他的血巫术不仅能超越自然规律延长他的寿命，而且还能让他随心所欲地控制其他人的身体和思想。在诺克萨斯贵族奢华的沙龙聚会上，这个能力让他围绕自己建立了狂热的教众，而在底层的后巷里，这个能力则让他吸干敌人的鲜血。',
        useList: [
          '鲜血转换会在治疗弗拉基米尔之前立即对敌人造成伤害，令它成为游戏中最好的最后一击方法之一。',
          '在能攻击到最多单位的地方施放血之瘟疫。',
          '血红之池能躲避飞来的法术，它可以用来避开控制技能。'
        ],
        enemyUseList: [
          '尽量在【R血之瘟疫】引爆前干掉弗拉基米尔，否则每个被感染的英雄都会为弗拉基米尔提供治疗效果。',
          '在团战开始时逼迫弗拉基米尔交出【W血红之池】，就会最大限度地消耗他的生命值。',
          '破败王者之刃】和【兰德里的折磨】等克制高生命值的装备能有效地对抗弗拉基米尔。'
        ]);
    return hero;
  }

  /// 诡术妖姬 乐芙兰
  static Hero leblanc() {
    Skin skin01 = Skin(
      skinName: '诡术妖姬 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '潮流女王 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '社会名流 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '幸福女神 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '邪鸦魅影 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7004.jpg',
    );
    Skin skin06 = Skin(
      skinName: '永恒之森',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7005.jpg',
    );
    Skin skin07 = Skin(
      skinName: '源代码 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7012.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7012.jpg',
    );
    Skin skin08 = Skin(
      skinName: 'iG 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7019.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7019.jpg',
    );
    Skin skin09 = Skin(
      skinName: '魔女 乐芙兰',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big7020.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small7020.jpg',
    );

    var P = SkillInfo(
        skillName: '镜花水月',
        skillDetail: '当乐芙兰跌至40%最大生命值以下时，她会隐形1秒并创造一个幻像（不能造成伤害），幻像最多可持续8秒。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/LeBlancP.png');
    var Q = SkillInfo(
        skillName: '恶意魔印',
        skillDetail:
            '乐芙兰朝目标投射一个魔印，造成伤害并标记目标3.5秒。用一个技能对被标记的目标造成伤害时，会引爆魔印，造成附加伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/LeblancQ.png');
    var W = SkillInfo(
        skillName: '魔影迷踪',
        skillDetail: '乐芙兰位移至目标位置，并对目标位置附近的敌人造成伤害。在接下来的4秒里，她可以激活此技能来回到她的初始位置。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/LeblancW.png');
    var E = SkillInfo(
        skillName: '幻影锁链',
        skillDetail: '乐芙兰抛出一条锁链来束缚命中的第一个敌人。如果目标持续被束缚1.5秒，那么目标就会受到额外的魔法伤害并且被禁锢。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/LeblancE.png');
    var R = SkillInfo(
        skillName: '故技重施',
        skillDetail: '乐芙兰可以施放她一个技能的故技重施版。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/LeblancR.png');

    var hero = Hero(
        id: 20200807,
        firstName: '诡术妖姬',
        secondName: '乐芙兰',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small7000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big7000.jpg',
        skinList: [
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08,
          skin09
        ],
        labelList: ['刺客', '法师', '中单'],
        strength: Strength(
            physicsAttr: 1, magicAttr: 10, defenseAttr: 4, operateAttr: 9),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '即使是在秘密团体黑色玫瑰的成员内部，乐芙兰也同样保持神秘，而乐芙兰这个名字也只是众多化名之一。这个皮肤惨白的女人自从诺克萨斯建国初期就开始操纵大小人物，推动事态发展。这位女法师能用魔法制造自己的镜像，她可以出现在任何地点、任何人面前、甚至同时现身于许多地方。乐芙兰永远都在暗处密谋策划，而她真正的动机和她变换不定的身份一样令人难以捉摸。',
        useList: [
          '魔影谜踪和故技重施一起释放，可以让对方难以猜出你要回到哪一个魔影谜踪的法阵上。',
          '使用魔影迷踪可以帮助你有好的站位来施放幻影锁链。',
          '你可以用恶意魔印与幻影锁链来防止有闪现技能的角色逃跑，最多持续4秒。'
        ],
        enemyUseList: [
          '乐芙兰的终极技能可以在她的技能施放期间，或是，少见地在一个遥远的位置创造一个假的乐芙兰。',
          '在远处创造的假乐芙兰将会跑向距它最近的敌方英雄，施放一个无害的技能，随后立刻消失。',
          '要先对乐芙兰发起攻击，来规避她的大部分小诡计，尤其是她在近期用过她的位移技能【魔影迷踪】时。',
          '晕眩或沉默乐芙兰将阻止她激活【魔影迷踪】返回。'
        ]);
    return hero;
  }

  /// 无畏战车 厄加特
  static Hero urgot() {
    Skin skin01 = Skin(
      skinName: '无畏战车 厄加特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big6000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small6000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '深渊巨蟹 厄加特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big6001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small6001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '电锯狂人 厄加特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big6002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small6002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '战地机甲 厄加特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big6003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small6003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '西部魔影 厄加特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big6009.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small6009.jpg',
    );
    Skin skin06 = Skin(
      skinName: '星之守护者COS 厄加特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big6015.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small6015.jpg',
    );

    var P = SkillInfo(
        skillName: '回响烈焰',
        skillDetail: '厄加特的普攻和【净除】会周期性地触发他腿上的烈焰喷射，造成物理伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/Urgot_Passive.png');
    var Q = SkillInfo(
        skillName: '腐蚀电荷',
        skillDetail: '发射一个可爆炸的电荷至目标位置，对爆炸波及到的敌人造成物理伤害和减速效果。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/UrgotQ.png');
    var W = SkillInfo(
        skillName: '净除',
        skillDetail: '厄加特减速自身的同时对附近的敌人们火力全开。优先攻击被厄加特近期用其它技能命中过的敌方英雄，并触发回响烈焰。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/UrgotW.png');
    var E = SkillInfo(
        skillName: '鄙弃',
        skillDetail:
            '厄加特向一个方向冲锋，为自身提供护盾并践踏非英雄的敌人。如果他捕捉到一个敌方英雄，他将会停下并将该英雄抛到他的另一侧。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/UrgotE.png');
    var R = SkillInfo(
        skillName: '超越死亡的恐惧',
        skillDetail:
            '厄加特发射一个化学钻头，刺穿命中的第一个敌方英雄。如果该英雄的生命值低于一定阈值，那么厄加特就会将该英雄评判为弱者并将其处决。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/UrgotR.png');

    var hero = Hero(
        id: 20200806,
        firstName: '无畏战车',
        secondName: '厄加特',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small6000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big6000.jpg',
        skinList: [skin01, skin02, skin03, skin04, skin05, skin06],
        labelList: ['射手', '战士', '上单'],
        strength: Strength(
            physicsAttr: 8, magicAttr: 3, defenseAttr: 5, operateAttr: 8),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '厄加特曾一度是诺克萨斯强大的处刑人，但这个让他为之杀人如麻的帝国，最后却背叛了他。铁链束缚着他，并迫使他在一个新的地方懂得了力量的真正意义——祖安地下深处的监牢矿坑——“沉钩”。后来的一场灾难让祖安城中混乱肆虐，厄加特也借机破土而出，在祖安的地下犯罪世界傲视群雄。曾经奴役他的铁链，现在是他折磨猎物的工具，他会用枪火洗礼自己新的家园，肃清那些不配苟活的人，将祖安铸成一座痛苦的熔炉。',
        useList: [
          '多注意你每条腿的冷却时间，因为它们是你伤害的重要构成部分。',
          '命中【腐蚀电荷】或【鄙弃】就能用【净除】来锁定目标——这是一种可让多条腿快速地连续发射的好办法。',
          '将【超越死亡的恐惧】留给那些看上去就虚弱得快死的敌人。这个技能在灭除那些逃命中的敌人时尤其有效。'
        ],
        enemyUseList: [
          '厄加特严重依赖他的几条腿来打击对手，而这些腿都有独立的冷却时间并且只会在他攻击腿所面对的方向上的敌人时贡献火力。避免吃到多条腿的火力。',
          '厄加特可以用【净除】来造成并吸收海量的伤害，但在它开火时，厄加特自身会被减速。',
          '如果你被【超越死亡的恐惧】所击中，要尽力避免限时内让血量降到斩杀线（你25%的最大生命值）。'
        ]);
    return hero;
  }

  /// 德邦总管 赵信
  static Hero zhaoxin() {
    Skin skin01 = Skin(
      skinName: '德邦总管 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5000.jpg',
    );
    Skin skin02 = Skin(
      skinName: '特战先锋 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5001.jpg',
    );
    Skin skin03 = Skin(
      skinName: '皇家守卫 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5002.jpg',
    );
    Skin skin04 = Skin(
      skinName: '绞肉机角斗士 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5003.jpg',
    );
    Skin skin05 = Skin(
      skinName: '翼骑统领 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5004.jpg',
    );
    Skin skin06 = Skin(
      skinName: '赵云 子龙',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5005.jpg',
    );
    Skin skin07 = Skin(
      skinName: '秘密特工 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5006.jpg',
    );
    Skin skin08 = Skin(
      skinName: '屠龙勇士 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5013.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5013.jpg',
    );
    Skin skin09 = Skin(
      skinName: '穿星魔锋 赵信',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big5020.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small5020.jpg',
    );

    var P = SkillInfo(
        skillName: '果决',
        skillDetail: '每第三次攻击造成额外伤害并治疗赵信自身。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/XinZhaoP.png');
    var Q = SkillInfo(
        skillName: '三重爪击',
        skillDetail: '赵信的下3次普攻将造成额外伤害并且第三次攻击将击飞目标。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/XinZhaoQ.png');
    var W = SkillInfo(
        skillName: '风斩电刺',
        skillDetail: '赵信用他的长枪斩击他的前方，之后将长枪向前刺击，并使被击中的敌人减速。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/XinZhaoW.png');
    var E = SkillInfo(
        skillName: '无畏冲锋',
        skillDetail: '赵信对一名敌人发起冲锋，对范围内的所有敌人造成伤害并使他们暂时减速。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/XinZhaoE.png');
    var R = SkillInfo(
        skillName: '新月护卫',
        skillDetail:
            '赵信对附近的敌人造成基于目标当前生命值的伤害，并击退未被挑战的目标。赵信会创造出一个圆环，且自身不会受到来自圆环之外的敌人所造成的伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/XinZhaoR.png');

    var hero = Hero(
        id: 20200805,
        firstName: '德邦总管',
        secondName: '赵信',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small5000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big5000.jpg',
        skinList: [
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07,
          skin08,
          skin09
        ],
        labelList: ['战士', '刺客', '打野'],
        strength: Strength(
            physicsAttr: 8, magicAttr: 3, defenseAttr: 6, operateAttr: 3),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '赵信是效忠于光盾王朝的坚毅勇士。他曾经沦落于诺克萨斯的角斗场，在无数次角斗中得以幸存。被德玛西亚军队解救以后，他便发誓为这群勇敢的解放者贡献生命和忠诚。最称手的三爪长枪相伴，赵信现在为自己的第二祖国而战，一往无前，暴虎冯河。',
        useList: [
          '赵信是优秀的团战发起者。冲在阵型的前方来开始战斗，并使用你的终极技能来造成最大的伤害。',
          '尽量移动到好的位置，好让你终极技能的击退效果的作用提升到最大。'
        ],
        enemyUseList: [
          '赵信是个强劲的团战发起者，他的冲锋和终极技能都能够对附近敌方单位造成伤害。 在他使用终极技能时要和队友分散。',
          '赵信严重依赖他的三重爪击来获得伤害及减少冷却时间的效果，所以阻止他完成他的连招，将会有很显著的效果。'
        ]);
    return hero;
  }

  /// 卡牌大师 崔斯特
  static Hero twist() {
    Skin skin00 = Skin(
      skinName: '卡牌大师 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4000.jpg',
    );
    Skin skin01 = Skin(
      skinName: '蓝色忧郁 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4001.jpg',
    );
    Skin skin02 = Skin(
      skinName: '红桃杰克 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4002.jpg',
    );
    Skin skin03 = Skin(
      skinName: '魔幻卡牌 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4003.jpg',
    );
    Skin skin04 = Skin(
      skinName: '探戈灵魂 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4004.jpg',
    );
    Skin skin05 = Skin(
      skinName: '西部牛仔 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4005.jpg',
    );
    Skin skin06 = Skin(
      skinName: '皇家火枪手',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4006.jpg',
    );
    Skin skin07 = Skin(
      skinName: '地底世界 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4007.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4007.jpg',
    );
    Skin skin08 = Skin(
      skinName: '逆转裁判 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4008.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4008.jpg',
    );
    Skin skin09 = Skin(
      skinName: '逍遥赌侠 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4009.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4009.jpg',
    );
    Skin skin10 = Skin(
      skinName: '腥红之月 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4010.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4010.jpg',
    );
    Skin skin11 = Skin(
      skinName: '未来战士 崔斯特',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big4011.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small4011.jpg',
    );

    var P = SkillInfo(
        skillName: '灌铅骰子',
        skillDetail: '在击杀了一名单位后，崔斯特会投掷他的“幸运”骰，并随机获得1到6的额外赏金。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/Cardmaster_SealFate.png');
    var Q = SkillInfo(
        skillName: '万能牌',
        skillDetail: '崔斯特扔出三张卡牌，卡牌会对沿途的每个敌方单位造成伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/WildCards.png');
    var W = SkillInfo(
        skillName: '选牌',
        skillDetail: '崔斯特挑选魔法卡牌，用于下次攻击，并附加额外效果。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/PickACard.png');
    var E = SkillInfo(
        skillName: '卡牌骗术',
        skillDetail: '崔斯特每四次攻击附加一次额外伤害。另外，崔斯特的攻击速度得到被动提升。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/spell/CardmasterStack.png');
    var R = SkillInfo(
        skillName: '命运',
        skillDetail: '崔斯特为他的敌人算卜命运，短时间内显示所有敌方英雄的位置，并可使用传送，让他在引导1.5秒后传送至目标位置。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/Destiny.png');

    var hero = Hero(
        id: 20200804,
        firstName: '卡牌大师',
        secondName: '崔斯特',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small4000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big4000.jpg',
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
          skin11
        ],
        labelList: ['法师', '中单'],
        strength: Strength(
            physicsAttr: 6, magicAttr: 6, defenseAttr: 2, operateAttr: 9),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '崔斯特·菲特是一名声名狼藉的纸牌高手和诈骗惯犯，世界上任何有人烟的地方都有他施展魅力和赌艺的足迹，让那些富人和痴人既羡慕又嫉恨。他很少会认真起来干一件事，总是用一抹轻蔑的微笑和一副漫不经心的随性面对每一天。无论面对什么情况，崔斯特的袖子里永远都会藏着一张王牌。',
        useList: [
          '与你的友军合作，争取最佳时机使用命运来伏击敌人。',
          '潜行角色通常会在生命值较低时逃离战斗。利用命运技能发现潜行目标，并将其消灭。',
          '卡牌大师可以作为物理系或法系角色，他能够配合不同的队伍构成。'
        ],
        enemyUseList: [
          '当你的英雄没有生命值时，早点躲避万能牌的攻击。',
          '如果你的生命值很低，小心敌方的崔斯特使用命运技能来击杀你。'
        ]);
    return hero;
  }

  /// 正义巨像 加里奥
  static Hero galio() {
    Skin skin00 = Skin(
      skinName: '正义巨像 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3000.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3000.jpg',
    );
    Skin skin01 = Skin(
      skinName: '幽蓝梦魇 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3001.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3001.jpg',
    );
    Skin skin02 = Skin(
      skinName: '机械迷城 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3002.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3002.jpg',
    );
    Skin skin03 = Skin(
      skinName: '战地之王 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3003.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3003.jpg',
    );
    Skin skin04 = Skin(
      skinName: '地狱之门卫士 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3004.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3004.jpg',
    );
    Skin skin05 = Skin(
      skinName: '风执事 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3005.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3005.jpg',
    );
    Skin skin06 = Skin(
      skinName: '鸡里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3006.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3006.jpg',
    );
    Skin skin07 = Skin(
      skinName: '地狱火 加里奥',
      skinImg: 'https://game.gtimg.cn/images/lol/act/img/skin/big3013.jpg',
      skinSmallImg:
          'https://game.gtimg.cn/images/lol/act/img/skin/small3013.jpg',
    );

    var P = SkillInfo(
        skillName: '巨像重击',
        skillDetail: '每过若干秒，加里奥的下次普攻就能在小范围内造成额外魔法伤害。',
        skillImg:
            'https://game.gtimg.cn/images/lol/act/img/passive/Galio_Passive.png');
    var Q = SkillInfo(
        skillName: '战争罡风',
        skillDetail: '加里奥发射两道罡风，罡风在汇聚后会形成一团大型龙卷风，造成持续伤害。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/GalioQ.png');
    var W = SkillInfo(
        skillName: '杜朗护盾',
        skillDetail: '加里奥在防御姿态下蓄力，同时移动速度减慢。在蓄力得以释放时，加里奥将嘲讽并伤害附近的敌人。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/GalioW.png');
    var E = SkillInfo(
        skillName: '正义冲拳',
        skillDetail: '加里奥将暂时后跳然后冲锋，击飞他遇到的第一个敌方英雄。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/GalioE.png');
    var R = SkillInfo(
        skillName: '英雄登场',
        skillDetail:
            '加里奥将一名友军的当前位置作为他的着陆点，并为区域内的所有友军提供一个魔法护盾。在短暂的延迟后，加里奥会落到该位置上，然后击退附近的敌人。',
        skillImg: 'https://game.gtimg.cn/images/lol/act/img/spell/GalioR.png');

    var hero = Hero(
        id: 20200803,
        firstName: '正义巨像',
        secondName: '加里奥',
        avatar: 'https://game.gtimg.cn/images/lol/act/img/skin/small3000.jpg',
        bigAvatar: 'https://game.gtimg.cn/images/lol/act/img/skin/big3000.jpg',
        skinList: [
          skin00,
          skin01,
          skin02,
          skin03,
          skin04,
          skin05,
          skin06,
          skin07
        ],
        labelList: ['坦克', '法师', '中单'],
        strength: Strength(
            physicsAttr: 1, magicAttr: 6, defenseAttr: 10, operateAttr: 5),
        skill: Skill(skillP: P, skillQ: Q, skillW: W, skillE: E, skillR: R),
        backStory:
            '光彩熠熠的德玛西亚城外，石巨像加里奥始终如一地守望着。他被创造出来是为了抵挡来犯的法师，但却经常要一动不动地矗立数十年，只有当强大的魔法力量出现时，他才会激活。而只要加里奥活动起来，他便会充分利用每一刻，品味荡气回肠的战斗和来之不易的守护人民的荣耀。可惜，他的胜利永远都喜忧参半，因为消灭魔法的同时，也消灭了他活跃力量的源泉。每一次胜利都会使他再次进入不知世事的休眠。',
        useList: [
          '即使在被控制的情况下，你也可以施放【W杜朗护盾】。',
          '你可以使用小地图上的友军图标来施放【R英雄登场】。 你可以利用【E正义冲拳】的小后跳来躲避敌方的技能。'
        ],
        enemyUseList: [
          '加里奥在积蓄【W杜朗护盾】时移动会变慢。',
          '在加里奥施放【R英雄登场】时，可以趁加里奥还没跃至空中时打断这个技能。',
          '加里奥无法用【E正义冲拳】翻越墙体。'
        ]);
    return hero;
  }

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
