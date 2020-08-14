import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/hero/HeroTool.dart';
import 'package:flutter_up/ui/widget/image/ImageView.dart';

class Fourth004Page extends StatefulWidget {
  @override
  _Fourth004PageState createState() => _Fourth004PageState();
}

class _Fourth004PageState extends State<Fourth004Page> {
  @override
  Widget build(BuildContext context) {
    var heroSkin = HeroTool.getHeroSkin();
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '所有英雄皮肤'),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 1.96,
          ),
          itemCount: heroSkin.length,
          itemBuilder: (context, index) => _buildChild(heroSkin[index]),
        ),
      ),
    );
  }

  _buildChild(String imageUrl) {
    return ImageView(
      imageUrl: imageUrl,
      circular: 5,
      onTop: () {
        print(imageUrl);
      },
    );
  }
}
