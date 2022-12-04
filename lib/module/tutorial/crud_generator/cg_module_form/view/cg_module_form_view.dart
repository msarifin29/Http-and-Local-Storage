import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgModuleFormView extends StatefulWidget {
  const CgModuleFormView({Key? key}) : super(key: key);

  Widget build(context, CgModuleFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgModuleForm"),
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
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Module",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            QTextField(
              label: "Module name",
              validator: Validator.required,
              value: "",
              onChanged: (value) {
                controller.moduleName = value;
              },
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Form",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.addItem(),
                    icon: const Icon(
                      Icons.add,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.formList.length,
                itemBuilder: (context, index) {
                  var item = controller.formList[index];
                  return Card(
                    // child: ListTile(
                    //   title: Text("${item["field_name"]}"),
                    //   subtitle: Text("${item["type"]}"),
                    // ),
                    child: Row(
                      children: [
                        Expanded(
                          child: QTextField(
                            label: "Field Name",
                            validator: Validator.required,
                            value: item["field_name"],
                            onChanged: (value) {
                              item["field_name"] = value;
                            },
                          ),
                        ),
                        Expanded(
                          child: QTextField(
                            label: "Type",
                            validator: Validator.required,
                            value: item["type"],
                            onChanged: (value) {
                              item["type"] = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CgModuleFormView> createState() => CgModuleFormController();
}
