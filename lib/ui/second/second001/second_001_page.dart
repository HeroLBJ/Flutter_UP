import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';
import 'package:flutter_up/ui/second/second001/second_001_2_page.dart';
import 'package:flutter_up/ui/widget/image/ImageView.dart';

class Second001Page extends StatefulWidget {
  @override
  _Second001PageState createState() => _Second001PageState();
}

class _Second001PageState extends State<Second001Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // 让AppBar没有底部阴影
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.menu, color: Colors.black))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Travel Blog',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelWidget(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: TravelSmallWidget(),
          )
        ],
      ),
    );
  }
}

class TravelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomHero = HeroTool.randomHero();
    return PageView.builder(
        controller: PageController(viewportFraction: 0.9),
        itemCount: randomHero.skinList.length,
        itemBuilder: (context, index) {
          var skin = randomHero.skinList[index];
          return Stack(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          Second0012Page(skinImg: skin.skinImg)));
                },
                child: Hero(
                  tag: skin.skinImg,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30, left: 5, right: 5),
                      child: ImageView(
                        imageUrl: skin.skinImg,circular: 5,
                      )),
                ),
              ),
              Positioned(
                  left: 30,
                  bottom: 50,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Spain ES1',
                        style: TextStyle(color: Colors.black26, fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Peach',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  )),
              Positioned(
                bottom: 0,
                right: 30,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            Second0012Page(skinImg: skin.skinImg)));
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}

class TravelSmallWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomHero = HeroTool.randomHero();
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: randomHero.skinList.length,
        itemBuilder: (context, index) {
          var skin = randomHero.skinList[index];
          return Container(
            width: 120,
            margin: EdgeInsets.only(
                bottom: 20, left: index == 0 ? 15 : 0, right: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: ImageView(imageUrl: skin.skinImg, circular: 5),
          );
        });
  }
}
