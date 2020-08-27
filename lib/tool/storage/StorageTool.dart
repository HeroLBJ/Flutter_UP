import 'dart:io';

import 'package:path_provider/path_provider.dart';

class StorageTool {
  void api() async {
    // 临时目录，系统可随时清除的目录 == Android getCacheDir()
    Directory directory1 = await getTemporaryDirectory();

    // 文档目录，程序被卸载时系统才会清除该目录 == Android AppData目录
    Directory directory2 = await getApplicationDocumentsDirectory();

    // 外部存储目录 == Android getExternalStorageDirectory()
    Directory directory3 = await getExternalStorageDirectory();
  }

  Future<String> get _localPath async {
    Directory directory = await getTemporaryDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    String path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      var contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }

  Future<File> writeCounter(counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}
