import 'package:flutter/material.dart';

class AppBarTool {
  static getAppBar(BuildContext context, String title,
      {Function share, Function back}) {
    Color color = Colors.white;
    return AppBar(
      centerTitle: true,
      leading: InkWell(
        onTap: back == null
            ? () {
                Navigator.pop(context);
              }
            : back,
        child: Icon(Icons.arrow_back_ios, color: color),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        InkWell(
          onTap: () {},
          child: Icon(Icons.brightness_high, color: color),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: share,
          child: Icon(Icons.share, color: color),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
