import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TfProductFormController extends State<TfProductFormView>
    implements MvcController {
  static late TfProductFormController instance;
  late TfProductFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photo;
  String? productName;
  double? price;
  String? description;

  bool get isEditMode {
    return widget.item != null;
  }

  doSave() async {
    if (isEditMode) {
      photo = photo ?? widget.item!["photo"];
      productName = productName ?? widget.item!["product_name"];
      price = price ?? widget.item!["price"];
      description = description ?? widget.item!["description"];

      await FirebaseFirestore.instance
          .collection("products")
          .doc(widget.item!["id"])
          .update({
        "product_name": productName,
        "photo": photo,
        "price": price,
        "description": description,
      });
    } else {
      await FirebaseFirestore.instance.collection("products").add({
        "product_name": productName,
        "photo": photo,
        "price": price,
        "description": description,
      });
    }
    await showInfoDialog("Berhasil bro!");
    Get.back();
  }
}
