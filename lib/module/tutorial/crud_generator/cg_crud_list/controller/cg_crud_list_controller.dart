import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgCrudListController extends State<CgCrudListView>
    implements MvcController {
  static late CgCrudListController instance;
  late CgCrudListView view;

  @override
  void initState() {
    instance = this;
    loadCrudList();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List crudList = [];
  loadCrudList() async {
    var moduleName = widget.module["module_name"]
        .toString()
        .toLowerCase()
        .replaceAll(" ", "_");
    crudList = await mainStorage.get(moduleName) ?? [];
    print("moduleName: $moduleName");
    print("crudList.length: ${crudList.length}");
    setState(() {});
  }

  deleteAll() async {
    var moduleName = widget.module["module_name"]
        .toString()
        .toLowerCase()
        .replaceAll(" ", "_");
    await mainStorage.delete(moduleName);
    loadCrudList();
  }
}
