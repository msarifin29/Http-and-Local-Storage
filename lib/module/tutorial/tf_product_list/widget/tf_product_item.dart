import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TfProductItem extends StatelessWidget {
  final Map<String, dynamic> item;
  const TfProductItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TfProductListController.instance;
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (detail) {},
      confirmDismiss: (direction) async {
        bool confirm = await showConfirmationDialog();
        if (confirm) {
          controller.doDelete(item);
          return Future.value(true);
        }
        return Future.value(false);
      },
      child: InkWell(
        onTap: () {
          Get.to(TfProductFormView(
            item: item,
          ));
        },
        child: Card(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(64.0),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(
                item["photo"],
              ),
            ),
            title: Text(item["product_name"]),
            subtitle: Text("${item["price"]}"),
          ),
        ),
      ),
    );
  }
}
