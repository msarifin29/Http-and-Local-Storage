import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tc_navigation_view.dart';

class TcNavigationController extends State<TcNavigationView> implements MvcController {
  static late TcNavigationController instance;
  late TcNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}