import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgModuleFormController extends State<CgModuleFormView>
    implements MvcController {
  static late CgModuleFormController instance;
  late CgModuleFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String moduleName = "";
  List formList = [];
  loadFormList() async {}

  addItem() async {
    formList.add({
      "field_name": "Product Name",
      "type": "textfield",
    });
    setState(() {});
  }

  doSave() async {
    // mainStorage.put("modules",);
    CgModuleListController.instance.moduleList.add({
      "module_name": moduleName,
      "created_at": DateTime.now(),
      "form": formList,
    });
    await mainStorage.put(
        "modules", CgModuleListController.instance.moduleList);
    Get.back();
  }
}
