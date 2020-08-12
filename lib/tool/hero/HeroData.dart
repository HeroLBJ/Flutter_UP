import 'Hero.dart';

class HeroData {
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
