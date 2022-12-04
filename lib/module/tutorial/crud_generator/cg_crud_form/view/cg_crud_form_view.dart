import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgCrudFormView extends StatefulWidget {
  final Map module;
  const CgCrudFormView({
    Key? key,
    required this.module,
  }) : super(key: key);

  Widget build(context, CgCrudFormController controller) {
    controller.view = this;

    getField(item) {
      if (item["type"] == "textfield") {
        return QTextField(
          label: item["field_name"],
          validator: Validator.required,
          value: "",
          onChanged: (value) {
            item["value"] = value;
          },
        );
      } else if (item["type"] == "numberfield") {
        return QNumberField(
          label: item["field_name"],
          validator: Validator.required,
          value: "",
          onChanged: (value) {
            item["value"] = value;
          },
        );
      } else if (item["type"] == "memofield") {
        return QMemoField(
          label: item["field_name"],
          validator: Validator.required,
          value: "",
          onChanged: (value) {
            item["value"] = value;
          },
        );
      } else if (item["type"] == "photo") {
        return QImagePicker(
          label: item["field_name"],
          validator: Validator.required,
          onChanged: (value) {
            item["value"] = value;
          },
        );
      }

      return QTextField(
        label: item["field_name"],
        validator: Validator.required,
        value: "",
        onChanged: (value) {
          item["value"] = value;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("${module["module_name"]} Form"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: controller.formList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.formList[index];
                  return Card(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: getField(item)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgCrudFormView> createState() => CgCrudFormController();
}
