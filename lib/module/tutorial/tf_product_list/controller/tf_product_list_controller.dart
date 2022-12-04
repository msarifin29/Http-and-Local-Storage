import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tf_product_list_view.dart';

class TfProductListController extends State<TfProductListView>
    implements MvcController {
  static late TfProductListController instance;
  late TfProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doDelete(Map<String, dynamic> item) async {
    await FirebaseFirestore.instance
        .collection("products")
        .doc(item["id"])
        .delete();
  }
}
