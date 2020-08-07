import 'package:flutter/material.dart';

import 'ColorTool.dart';

contentChild(String title, Function onTop) {
  return wrapTap(
      Container(
        padding: EdgeInsets.only(left: 15),
        height: 60,
        color: ColorTool.randomColor(),
        alignment: Alignment.centerLeft,
        child: Text(title, style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
      onTop);
}

wrapTap(Widget child, Function onTap) {
  return InkWell(
    onTap: onTap,
    child: child,
  );
}
