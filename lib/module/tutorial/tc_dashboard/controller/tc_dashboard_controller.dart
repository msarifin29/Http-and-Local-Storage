import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tc_dashboard_view.dart';

class TcDashboardController extends State<TcDashboardView> implements MvcController {
  static late TcDashboardController instance;
  late TcDashboardView view;

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