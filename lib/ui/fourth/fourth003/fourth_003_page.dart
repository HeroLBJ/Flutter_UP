import 'package:flutter/material.dart';
import 'package:flutter_up/tool/AppBarTool.dart';
import 'package:flutter_up/tool/ColorTool.dart';
import 'package:flutter_up/tool/toast/ToastTool.dart';
import 'package:flutter_up/ui/fourth/fourth003/SafeAreaPage.dart';

class Fourth003Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTool.getAppBar(context, '小部件'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: <Widget>[
              _wrapChild('SafeArea', () => _startPage(context, SafeAreaPage())),
              _wrapChild('Expanded', () => ToastTool.showText('敬请期待')),
              _wrapChild('Wrap', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedContainer', () => ToastTool.showText('敬请期待')),
              _wrapChild('Opacity', () => ToastTool.showText('敬请期待')),
              _wrapChild('FutureBuilder', () => ToastTool.showText('敬请期待')),
              _wrapChild('FadeTransition', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'FloatingActionButton', () => ToastTool.showText('敬请期待')),
              _wrapChild('PageView', () => ToastTool.showText('敬请期待')),
              _wrapChild('Table', () => ToastTool.showText('敬请期待')),
              _wrapChild('SliverAppBar', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'SliverList&SliverGrid', () => ToastTool.showText('敬请期待')),
              _wrapChild('FadeInImage', () => ToastTool.showText('敬请期待')),
              _wrapChild('StreamBuilder', () => ToastTool.showText('敬请期待')),
              _wrapChild('InheritedModel', () => ToastTool.showText('敬请期待')),
              _wrapChild('ClipRRect', () => ToastTool.showText('敬请期待')),
              _wrapChild('Hero', () => ToastTool.showText('敬请期待')),
              _wrapChild('CustomPaint', () => ToastTool.showText('敬请期待')),
              _wrapChild('Tooltip', () => ToastTool.showText('敬请期待')),
              _wrapChild('FittedBox', () => ToastTool.showText('敬请期待')),
              _wrapChild('LayoutBuilder', () => ToastTool.showText('敬请期待')),
              _wrapChild('AbsorbPointer', () => ToastTool.showText('敬请期待')),
              _wrapChild('Transform', () => ToastTool.showText('敬请期待')),
              _wrapChild('BackdropFilter', () => ToastTool.showText('敬请期待')),
              _wrapChild('Align', () => ToastTool.showText('敬请期待')),
              _wrapChild('Positioned', () => ToastTool.showText('敬请期待')),
              _wrapChild('AimatedBuilder', () => ToastTool.showText('敬请期待')),
              _wrapChild('Dismissible', () => ToastTool.showText('敬请期待')),
              _wrapChild('SizedBox', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'ValueListenableBuilder', () => ToastTool.showText('敬请期待')),
              _wrapChild('Draggale', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedList', () => ToastTool.showText('敬请期待')),
              _wrapChild('Flexible', () => ToastTool.showText('敬请期待')),
              _wrapChild('MediaQuery', () => ToastTool.showText('敬请期待')),
              _wrapChild('Spacer', () => ToastTool.showText('敬请期待')),
              _wrapChild('InheritedWidget', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedIcon', () => ToastTool.showText('敬请期待')),
              _wrapChild('AspectRatio', () => ToastTool.showText('敬请期待')),
              _wrapChild('LimitedBox', () => ToastTool.showText('敬请期待')),
              _wrapChild('Placeholder', () => ToastTool.showText('敬请期待')),
              _wrapChild('RichText', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'ReorderableListView', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedSwitcher', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'AnimatedPositioned', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedPadding', () => ToastTool.showText('敬请期待')),
              _wrapChild('IndexedStack', () => ToastTool.showText('敬请期待')),
              _wrapChild('Semantics', () => ToastTool.showText('敬请期待')),
              _wrapChild('ConstrainedBox', () => ToastTool.showText('敬请期待')),
              _wrapChild('Stack', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedOpacity', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'FractionallySizedBox', () => ToastTool.showText('敬请期待')),
              _wrapChild('ListView', () => ToastTool.showText('敬请期待')),
              _wrapChild('ListTitle', () => ToastTool.showText('敬请期待')),
              _wrapChild('Container', () => ToastTool.showText('敬请期待')),
              _wrapChild('SelectableText', () => ToastTool.showText('敬请期待')),
              _wrapChild('DataTable', () => ToastTool.showText('敬请期待')),
              _wrapChild('Slider&RangeSlider&CupertinoSlider',
                  () => ToastTool.showText('敬请期待')),
              _wrapChild('AlertDialog', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedCrossFade', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'DraggableScrollableSheet', () => ToastTool.showText('敬请期待')),
              _wrapChild('ColorFiltered', () => ToastTool.showText('敬请期待')),
              _wrapChild('ToggleButtons', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'CupertinoActionSheet', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'TweenAnimationBuilder', () => ToastTool.showText('敬请期待')),
              _wrapChild('Image', () => ToastTool.showText('敬请期待')),
              _wrapChild('DefaultTabController&TabBar',
                  () => ToastTool.showText('敬请期待')),
              _wrapChild('Drawer', () => ToastTool.showText('敬请期待')),
              _wrapChild('SnackBar', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'ListWheelScrollView', () => ToastTool.showText('敬请期待')),
              _wrapChild('ShaderMask', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'NotificationListener', () => ToastTool.showText('敬请期待')),
              _wrapChild('Builder', () => ToastTool.showText('敬请期待')),
              _wrapChild('ClipPath', () => ToastTool.showText('敬请期待')),
              _wrapChild(
                  'LinearProgressIndicator', () => ToastTool.showText('敬请期待')),
              _wrapChild('CircularProgressIndicator',
                  () => ToastTool.showText('敬请期待')),
              _wrapChild('Divider', () => ToastTool.showText('敬请期待')),
              _wrapChild('IgnorePointer', () => ToastTool.showText('敬请期待')),
              _wrapChild('CupertinoActivityIndicator',
                  () => ToastTool.showText('敬请期待')),
              _wrapChild('ClipOval', () => ToastTool.showText('敬请期待')),
              _wrapChild('AnimatedWidget', () => ToastTool.showText('敬请期待')),
              _wrapChild('Padding', () => ToastTool.showText('敬请期待')),
              _wrapChild('CheckboxListTitle', () => ToastTool.showText('敬请期待')),
              _wrapChild('AboutDialog', () => ToastTool.showText('敬请期待')),
              _wrapChild('Package:async', () => ToastTool.showText('敬请期待')),
            ],
          ),
        ),
      ),
    );
  }

  _wrapChild(String title, VoidCallback onTap) {
    var child = Container(
      decoration: BoxDecoration(
          color: ColorTool.randomColor(),
          borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Text(title, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
    return InkWell(
        borderRadius: BorderRadius.circular(15), onTap: onTap, child: child);
  }

  _startPage(BuildContext context, Widget page) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => page));
  }
}
