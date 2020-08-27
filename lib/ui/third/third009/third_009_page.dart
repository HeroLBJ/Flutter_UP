import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:path_provider/path_provider.dart';

class Third009Page extends StatefulWidget {
  @override
  _Third009PageState createState() => _Third009PageState();
}

class _Third009PageState extends State<Third009Page> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    read().then((value){
        setState(() {
          count =  value;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '文件操作'),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(onPressed: add, child: Text('+')),
            Text(
              '$count',
              style: TextStyle(fontSize: 24),
            ),
            FlatButton(onPressed: sub, child: Text('+'))
          ],
        ),
      ),
    );
  }

  Future<int> read() async {
    try {
      File file = await getLocalFile();
      var readAsString = await file.readAsString();
      return int.parse(readAsString);
    } on Exception {
      return 0;
    }
  }

  Future<Null> add() async {
    setState(() {
      count++;
    });
    // 将count写入到文件中
    File file = await getLocalFile();
    await file.writeAsString('$count');
  }

  Future<Null> sub() async {
    setState(() {
      count--;
    });
    // 将count写入到文件中
    File file = await getLocalFile();
    await file.writeAsString('$count');
  }

  Future<File> getLocalFile() async {
    String path = (await getApplicationDocumentsDirectory()).path;
    return File('$path/counter.txt');
  }
}
