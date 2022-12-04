import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tf_main_navigation_view.dart';

class TfMainNavigationController extends State<TfMainNavigationView>
    implements MvcController {
  static late TfMainNavigationController instance;
  late TfMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(newIndex) {
    print("newIndex: $newIndex");
    selectedIndex = newIndex;
    setState(() {});
  }
}
