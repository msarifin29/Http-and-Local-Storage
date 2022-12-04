import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_main_navigation_view.dart';

class CgMainNavigationController extends State<CgMainNavigationView>
    implements MvcController {
  static late CgMainNavigationController instance;
  late CgMainNavigationView view;

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
}
