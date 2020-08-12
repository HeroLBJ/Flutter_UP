import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

class Third003Page extends StatefulWidget {
  @override
  _Third003PageState createState() => _Third003PageState();
}

class _Third003PageState extends State<Third003Page> with AfterLayoutMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new Container(color: Colors.red));
  }

  void showHelloWorld() {
    showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        content: new Text('Hello World'),
        actions: <Widget>[
          new FlatButton(
            child: new Text('DISMISS'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    showHelloWorld();
  }
}
