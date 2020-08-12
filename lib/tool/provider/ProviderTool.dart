import 'package:flutter_up/ui/first/first003/first_003_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => First003Provider()),
];
