import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Third008Page extends StatefulWidget {
  @override
  _Third008PageState createState() => _Third008PageState();
}

class _Third008PageState extends State<Third008Page> {
  final GlobalKey globalKey = new GlobalKey();

  Uint8List capturePng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '截屏操作'),
      body: Column(
        children: <Widget>[
          RepaintBoundary(
              key: globalKey,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny,
                    size: 60,
                    color: Colors.redAccent,
                  ),
                  Icon(Icons.wb_sunny, size: 60, color: Colors.greenAccent),
                  Icon(Icons.wb_sunny, size: 60, color: Colors.blueAccent),
                  Icon(Icons.wb_sunny, size: 60, color: Colors.orangeAccent),
                ],
              )),
          RaisedButton(
            onPressed: () {
              _capturePng().then((value) {
                setState(() {
                  capturePng = value;

                  savePng();
                });
              });
            },
            child: Text('开始'),
          ),
          capturePng != null
              ? Image.memory(capturePng)
              : Icon(Icons.hourglass_empty)
        ],
      ),
    );
  }

  Future<Null> savePng() async {
    //检查是否有存储权限
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
      return;
    }
    String path = (await getExternalStorageDirectory()).path;
    debugPrint('path == $path');
    File file = File('$path/911.png');
    await file.writeAsBytes(capturePng);
    await ImageGallerySaver.saveFile(file.path);
  }

  // 截图boundary，并且返回图片的二进制数据。
  Future<Uint8List> _capturePng() async {
    RenderRepaintBoundary boundary =
        globalKey.currentContext.findRenderObject();
    var image = await boundary.toImage();
    // 注意：png是压缩后格式，如果需要图片的原始像素数据，请使用rawRgba
    ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();
    return pngBytes;
  }
}
