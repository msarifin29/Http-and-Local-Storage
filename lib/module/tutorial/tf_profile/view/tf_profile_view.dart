import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TfProfileView extends StatefulWidget {
  const TfProfileView({Key? key}) : super(key: key);

  Widget build(context, TfProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfProfile"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              StreamBuilder<DocumentSnapshot<Object?>>(
                stream: FirebaseFirestore.instance
                    .collection("users")
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (!snapshot.hasData) return const Text("No Data");
                  Map<String, dynamic> item =
                      (snapshot.data!.data() as Map<String, dynamic>);
                  item["id"] = snapshot.data!.id;
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        item["name"],
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        item["email"] ?? "-",
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const Divider(),
                      QImagePicker(
                        label: "Photo",
                        hint: "Your photo",
                        validator: Validator.required,
                        value: item["photo"],
                        onChanged: (value) {
                          print(value);
                          controller.photo = value;
                        },
                      ),
                      QTextField(
                        label: "Name",
                        hint: "Name",
                        validator: Validator.required,
                        value: item["name"],
                        onChanged: (value) {
                          controller.name = value;
                        },
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.save),
                        label: const Text("Save"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doSave(item),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TfProfileView> createState() => TfProfileController();
}
