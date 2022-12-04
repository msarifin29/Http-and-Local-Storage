import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgCrudFormController extends State<CgCrudFormView>
    implements MvcController {
  static late CgCrudFormController instance;
  late CgCrudFormView view;

  @override
  void initState() {
    instance = this;
    formList = widget.module["form"];
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List formList = [];
  doSave() async {
    var value = {};
    for (var i = 0; i < formList.length; i++) {
      var item = formList[i];
      var fieldName = item["field_name"];
      fieldName = fieldName.toString().replaceAll(" ", "_").toLowerCase();
      var itemValue = item["value"];

      value[fieldName] = itemValue;
      print(item);
    }
    var moduleName = widget.module["module_name"]
        .toString()
        .replaceAll(" ", "_")
        .toLowerCase();

    print("moduleName: $moduleName");
    print("value: $value");
    // await mainStorage.put(widget.module["module_name"], value);

    List currentList = await mainStorage.get(moduleName) ?? [];
    currentList.add(value);
    await mainStorage.put(moduleName, currentList);
    Get.back();
  }
}
