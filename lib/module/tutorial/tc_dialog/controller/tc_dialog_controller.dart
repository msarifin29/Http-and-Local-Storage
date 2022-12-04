import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tc_dialog_view.dart';

class TcDialogController extends State<TcDialogView> implements MvcController {
  static late TcDialogController instance;
  late TcDialogView view;

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