import 'package:example/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TfRegisterController extends State<TfRegisterView>
    implements MvcController {
  static late TfRegisterController instance;
  late TfRegisterView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";

  doRegister() async {
    print("Why?");
    print("email: $email");
    print("password: $password");
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      showInfoDialog("Success!");
    } on Exception {
      showInfoDialog("Failed to register");
    }
  }
}
