import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/ui/third/third004/Third004Provider.dart';
import 'package:provider/provider.dart';

class Third004Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, 'Provider的使用'),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Consumer<Third004Provider>(builder: (context, result, child) {
              return RaisedButton(
                onPressed: () {
                  result.minus();
                },
                child: Text('-',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              );
            }),
            Selector<Third004Provider, int>(builder: (context, num, child) {
              return Text(
                '$num',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              );
            }, selector: (context, provider) {
              return provider.num;
            }, shouldRebuild: (last, next) {
              return last != next && next != 10;
            }),
            Consumer<Third004Provider>(
              builder: (context, result, child) {
                return Text(
                  '${result.num}',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                );
              },
            ),
            Consumer<Third004Provider>(builder: (context, provider, child) {
              return RaisedButton(
                onPressed: () {
                  provider.addNum();
                },
                child: Text('+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
              );
            }),
          ],
        ),
      ),
    );
  }
}
