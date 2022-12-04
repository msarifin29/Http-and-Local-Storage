import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:example/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TfProfileController extends State<TfProfileView>
    implements MvcController {
  static late TfProfileController instance;
  late TfProfileView view;

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
  String? name;

  doLogout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(const TfLoginView());
  }

  doSave(Map<String, dynamic> oldValue) async {
    photo = photo ?? oldValue["photo"];
    name = name ?? oldValue["name"];

    await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({
      "name": name,
      "photo": photo,
    });
    showInfoDialog("Mantap bro!");
  }
}
