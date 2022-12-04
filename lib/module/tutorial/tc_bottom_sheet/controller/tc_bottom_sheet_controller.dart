import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tc_bottom_sheet_view.dart';

class TcBottomSheetController extends State<TcBottomSheetView> implements MvcController {
  static late TcBottomSheetController instance;
  late TcBottomSheetView view;

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