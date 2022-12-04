import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgCrudListView extends StatefulWidget {
  final Map module;
  const CgCrudListView({
    Key? key,
    required this.module,
  }) : super(key: key);

  Widget build(context, CgCrudListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(module["module_name"]),
        actions: [
          IconButton(
            onPressed: () => controller.deleteAll(),
            icon: const Icon(
              Icons.delete_sweep,
              size: 24.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(CgCrudFormView(
            module: module,
          ));
          controller.loadCrudList();
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.crudList.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> item =
                      Map<String, dynamic>.from(controller.crudList[index]);

                  var keys = item.keys.toList();
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          if (item["photo"] != null)
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: NetworkImage(
                                item["photo"],
                              ),
                            ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                // Text(
                                //   "$item",
                                //   style: const TextStyle(
                                //     fontSize: 20.0,
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                // ),
                                ListView.builder(
                                  itemCount: keys.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    var key = keys[index];
                                    var value = item[key];
                                    var title = key
                                        .toString()
                                        .replaceAll("_", " ")
                                        .capitalize();

                                    if (key == "photo") return Container();
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          title,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        Text(
                                          "$value",
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 1.0,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
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
  State<CgCrudListView> createState() => CgCrudListController();
}
