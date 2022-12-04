import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:example/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

/*
Reuseable Widget
- Reuseable Widget level Module
- Reuseable Widget level Global
*/
class TfLoginController extends State<TfLoginView> implements MvcController {
  static late TfLoginController instance;
  late TfLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "fugi@demo.com";
  String password = "123456";

  doLogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      showInfoDialog("Mantap bro, tebakan anda benar!");

      onLoginSuccess();
    } on Exception {
      showInfoDialog("Gagal login bro, kasian deh lo");
    }
  }

  doLoginByGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("userCredential: $userCredential");
      //TODO: on login success
      //------------------
      onLoginSuccess();
    } catch (_) {}
  }

  doLoginByGuest() async {
    await FirebaseAuth.instance.signInAnonymously();
    onLoginSuccess();
  }

  onLoginSuccess() async {
    //
    var currentSnapshot = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    if (!currentSnapshot.exists) {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        "name": FirebaseAuth.instance.currentUser!.displayName ?? "No name",
        "photo": FirebaseAuth.instance.currentUser!.photoURL ??
            "https://i.ibb.co/S32HNjD/no-image.jpg",
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "email": FirebaseAuth.instance.currentUser!.email,
      });
    }
    Get.offAll(const TfMainNavigationView());
  }
}
