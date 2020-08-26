import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ColorTool.dart';

class First002Page extends StatefulWidget {
  @override
  _First002PageState createState() => _First002PageState();
}

class _First002PageState extends State<First002Page> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  bool isFull = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '闲鱼底部'),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            if (index == 0 || index == 1) {
              _currentIndex = index;
            } else if (index == 2) {
              _currentIndex = 3;
            } else if (index == 3) {
              _currentIndex = 4;
            }
          });
        },
        controller: _pageController,
        children: <Widget>[Page1(), Page2(), Page4(), Page5()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index <= 1) {
              _pageController.jumpToPage(index);
            } else if (index == 3) {
              _pageController.jumpToPage(2);
            } else if (index == 4) {
              _pageController.jumpToPage(3);
            }
            setState(() {
              if (index != 2) {
                _currentIndex = index;
              }
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.looks_one), title: Text('1')),
            BottomNavigationBarItem(
                icon: Icon(Icons.looks_two), title: Text('2')),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.looks_4), title: Text('4')),
            BottomNavigationBarItem(icon: Icon(Icons.looks_5), title: Text('5'))
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: (){
          setState(() {
            isFull = !isFull;
          });
        },
        child: Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              color: ColorTool.randomColor()),
          child: Icon(
            isFull ? Icons.favorite : Icons.favorite_border,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTool.randomColor(),
      child: Icon(Icons.looks_one),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTool.randomColor(),
      child: Icon(Icons.looks_two),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTool.randomColor(),
      child: Icon(Icons.looks_3),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTool.randomColor(),
      child: Icon(Icons.looks_4),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTool.randomColor(),
      child: Icon(Icons.looks_5),
    );
  }
}
