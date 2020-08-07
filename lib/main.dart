import 'package:flutter/material.dart';
import 'package:flutter_up/ui/first/first_main_page.dart';
import 'package:flutter_up/ui/fourth/fourth_main_page.dart';
import 'package:flutter_up/ui/second/second_main_page.dart';
import 'package:flutter_up/ui/third/third_main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Index(),
    );
  }
}

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  PageController _controller = PageController();
  int _currentIndex = 0;

  Color _activeColor = Colors.orange;
  Color _defaultColor = Colors.brown;

  List<Widget> _mainPageList = [
    FirstMainPage(),
    SecondMainPage(),
    ThirdMainPage(),
    FourthMainPage()
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _controller,
        children: _mainPageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            _bottomItem(0),
            _bottomItem(1),
            _bottomItem(2),
            _bottomItem(3)
          ]),
    );
  }

  _bottomItem(int index) {
    IconData labelIcon;
    String labelText;
    if (index == 0) {
      labelIcon = Icons.looks_one;
      labelText = 'FIRST';
    } else if (index == 1) {
      labelIcon = Icons.looks_two;
      labelText = 'SECOND';
    } else if (index == 2) {
      labelIcon = Icons.looks_3;
      labelText = 'THIRD';
    } else if (index == 3) {
      labelIcon = Icons.looks_4;
      labelText = 'FOURTH';
    }

    return BottomNavigationBarItem(
        icon: Icon(labelIcon, color: _defaultColor),
        activeIcon: Icon(labelIcon, color: _activeColor),
        title: Text(labelText,
            style: TextStyle(
                color: _currentIndex == index ? _activeColor : _defaultColor)));
  }
}
