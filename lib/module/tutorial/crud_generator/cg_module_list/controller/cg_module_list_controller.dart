import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgModuleListController extends State<CgModuleListView>
    implements MvcController {
  static late CgModuleListController instance;
  late CgModuleListView view;

  @override
  void initState() {
    instance = this;
    loadModuleList();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List moduleList = [];
  loadModuleList() async {
    moduleList = await mainStorage.get("modules") ?? [];
    setState(() {});
  }
}
