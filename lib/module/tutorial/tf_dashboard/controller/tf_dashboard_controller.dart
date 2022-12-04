import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tf_dashboard_view.dart';

class TfDashboardController extends State<TfDashboardView> implements MvcController {
  static late TfDashboardController instance;
  late TfDashboardView view;

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