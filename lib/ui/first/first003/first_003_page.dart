import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ColorTool.dart';
import 'package:flutter_up/tool/toast/ToastTool.dart';
import 'package:flutter_up/ui/first/first003/first_003_provider.dart';
import 'package:provider/provider.dart';

class First003Page extends StatefulWidget {
  @override
  _First003PageState createState() => _First003PageState();
}

class _First003PageState extends State<First003Page>
    with TickerProviderStateMixin {
  List<AnimationController> _animControllerList = [];
  List<Animation> _colorAnimList = [];

  _onTop(First003Provider provider, int index) {
    var animController = _animControllerList[index];

    _colorAnimList[index] = ColorTween(
            begin: Colors.lightGreen,
            end: provider.currentNum == provider.defaultNumList[index]
                ? Colors.purpleAccent
                : Colors.red)
        .animate(animController)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              animController.reverse();
            }
          });
    animController.forward();

    if (provider.currentNum == provider.defaultNumList[index]) {
      provider.currentNum += 1;
    }
    if (provider.currentNum > provider.maxNum) {
      // 成功，难度升级
      ToastTool.showText('挑战成功，难度升级');
      provider.switchDiff();
    }
  }

  @override
  void initState() {
    super.initState();
    Provider.of<First003Provider>(context, listen: false).restartGame();

    _animControllerList.clear();
    _colorAnimList.clear();
    List.generate(36, (index) {
      _animControllerList.add(AnimationController(
          duration: Duration(milliseconds: 500), vsync: this));
      _colorAnimList.add(
          ColorTween(begin: Colors.lightGreen, end: Colors.purpleAccent)
              .animate(_animControllerList[index]));
    });
  }

  @override
  void dispose() {
    _animControllerList.forEach((element) {
      element.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var borderSide = BorderSide(color: Colors.black, width: 2);

    var provider = Provider.of<First003Provider>(context);

    return WillPopScope(
      onWillPop: () {
        provider.pauseGame();
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBarTool.getAppBar(context, '舒尔特方格', back: () {
          provider.pauseGame();
          Navigator.pop(context);
        }),
        body: Column(
          children: <Widget>[
            GridView.count(
              // physics+shrinkWrap  Column嵌套GridView导致页面不显示的解决方案，让GridView不能滑动
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: provider.crossAxisCount,
              children: List.generate(
                  provider.maxNum,
                  (index) => InkWell(
                        onTap: () {
                          Provider.of<First003Provider>(context, listen: false)
                              .startTime();
                          _onTop(provider, index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: _colorAnimList[index].value,
                              border: Border(
                                top: index < provider.crossAxisCount
                                    ? borderSide
                                    : BorderSide.none,
                                left: index % provider.crossAxisCount == 0
                                    ? borderSide
                                    : BorderSide.none,
                                bottom: borderSide,
                                right: borderSide,
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            '${provider.defaultNumList[index]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
            ),
            SizedBox(height: 25),
            Text(
                '${Provider.of<First003Provider>(context).gameTime.toStringAsFixed(1)}s',
                style: TextStyle(
                    color: ColorTool.black3_9,
                    fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildRestartGame(),
                _buildPauseGame(),
                _buildAgainGame(),
                _buildSwitchGame()
              ],
            )
          ],
        ),
      ),
    );
  }

  /// 重新游戏
  _buildRestartGame() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
          onPressed: () {
            Provider.of<First003Provider>(context, listen: false).restartGame();
          },
          child: Text(
            '重新游戏',
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
    );
  }

  /// 暂停游戏
  _buildPauseGame() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
          onPressed: () {
            Provider.of<First003Provider>(context, listen: false).pauseGame();
          },
          child: Text('暂停游戏',
              style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }

  /// 再来一局
  _buildAgainGame() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
          onPressed: () {
            Provider.of<First003Provider>(context, listen: false).againGame();
          },
          child: Text('再来一局',
              style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }

  /// 切换难易
  _buildSwitchGame() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
          onPressed: () {
            Provider.of<First003Provider>(context, listen: false).switchDiff();
          },
          child: Text('切换难易',
              style: TextStyle(color: Colors.white, fontSize: 18))),
    );
  }
}
