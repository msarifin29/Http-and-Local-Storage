import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tc_snackbar_view.dart';

class TcSnackbarController extends State<TcSnackbarView> implements MvcController {
  static late TcSnackbarController instance;
  late TcSnackbarView view;

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