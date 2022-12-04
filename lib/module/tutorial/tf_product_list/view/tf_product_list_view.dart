import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:example/module/tutorial/tf_product_list/widget/tf_product_item.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TfProductListView extends StatefulWidget {
  const TfProductListView({Key? key}) : super(key: key);

  Widget build(context, TfProductListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TfProductList"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          showLoading();
          await Future.delayed(const Duration(seconds: 2));
          hideLoading();
          showConfirmationDialog();
          // await Get.to(const TfProductFormView());
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("products")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.docs.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;
                      return TfProductItem(item: item);
                    },
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
  State<TfProductListView> createState() => TfProductListController();
}
