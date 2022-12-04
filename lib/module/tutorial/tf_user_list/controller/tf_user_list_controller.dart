import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tf_user_list_view.dart';

class TfUserListController extends State<TfUserListView> implements MvcController {
  static late TfUserListController instance;
  late TfUserListView view;

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