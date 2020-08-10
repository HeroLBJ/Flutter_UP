import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';

class First003Page extends StatefulWidget {
  @override
  _First003PageState createState() => _First003PageState();
}

class _First003PageState extends State<First003Page>
    with TickerProviderStateMixin {
  int _crossAxisCount = 5;
  int _maxNum;

  List<int> _defaultNumList = [];
  int currentNum = 1;
  List<AnimationController> _animControllerList = [];
  List<Animation> _colorAnimList = [];

  @override
  void initState() {
    super.initState();

    _maxNum = _crossAxisCount * _crossAxisCount;

    List.generate(_maxNum, (index) {
      _defaultNumList.add(index + 1);
      _animControllerList.add(AnimationController(
          duration: Duration(milliseconds: 500), vsync: this));
      _colorAnimList.add(
          ColorTween(begin: Colors.lightGreen, end: Colors.purpleAccent)
              .animate(_animControllerList[index]));
    });
    _defaultNumList.shuffle(); // 将数据打乱
  }

  _onTop(int index) {
    var animController = _animControllerList[index];

    _colorAnimList[index] = ColorTween(
            begin: Colors.lightGreen,
            end: currentNum == _defaultNumList[index]
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
    if (currentNum == _defaultNumList[index]) {
      currentNum += 1;
    }
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
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '舒尔特方格'),
      body: GridView.count(
        crossAxisCount: _crossAxisCount,
        children: List.generate(
            _maxNum,
            (index) => InkWell(
                  onTap: () {
                    _onTop(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: _colorAnimList[index].value,
                        border: Border(
                          top: index < _crossAxisCount
                              ? borderSide
                              : BorderSide.none,
                          left: index % _crossAxisCount == 0
                              ? borderSide
                              : BorderSide.none,
                          bottom: borderSide,
                          right: borderSide,
                        )),
                    alignment: Alignment.center,
                    child: Text(
                      '${_defaultNumList[index]}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
      ),
    );
  }
}
