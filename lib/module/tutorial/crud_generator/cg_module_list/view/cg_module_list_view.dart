import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgModuleListView extends StatefulWidget {
  const CgModuleListView({Key? key}) : super(key: key);

  Widget build(context, CgModuleListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgModuleList"),
        actions: [
          IconButton(
            onPressed: () => controller.loadModuleList(),
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const CgModuleFormView());
          controller.loadModuleList();
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.moduleList.length,
                itemBuilder: (context, index) {
                  var item = controller.moduleList[index];
                  return InkWell(
                    onTap: () async {
                      await Get.to(CgCrudListView(
                        module: item,
                      ));
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("${item["module_name"]}"),
                        subtitle: Text("${item["created_at"]}"),
                      ),
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
  State<CgModuleListView> createState() => CgModuleListController();
}
