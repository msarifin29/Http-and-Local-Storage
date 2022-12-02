import 'package:example/config.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrView extends StatefulWidget {
  const TrView({Key? key}) : super(key: key);

  Widget build(context, TrController controller) {
    controller.view = this;

    if (AppConfig.yourName == "Deny" ||
        AppConfig.phoneNumber == "082146727409" ||
        AppConfig.yourName.isEmpty) {
      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your name: ${AppConfig.yourName}",
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
              const Divider(),
              const Text(
                "Kamu harus mengatur variabel AppConfig.yourName dan AppConfig.phoneNumber",
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "1. Buka file tersebut, dan ganti bagian ini:",
              ),
              const Text(
                "Lokasi file: lib/config.dart",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const Text(
                "String yourName = \"Nama Lengkap Kamu\";",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              const Text(
                "String phoneNumber = \"Nomor Handphone Kamu\";",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "2. Hot-Reload",
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial View"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // title("Example"),
              // TrList(
              //   title: "FIC State Management",
              //   items: controller.ficStateManagementList,
              //   color: Colors.purple,
              // ),
              // TrList(
              //   title: "State Management",
              //   items: controller.items,
              //   color: Colors.red,
              // ),
              // TrList(
              //   title: "Form",
              //   items: controller.formItems,
              //   color: Colors.green,
              // ),
              // TrList(
              //   title: "HTTP Request",
              //   items: controller.httpRequestItems,
              //   color: Colors.green,
              // ),
              // TrList(
              //   title: "Firebase x Firestore",
              //   items: controller.firebaseExampleItems,
              //   color: Colors.red,
              // ),
              // TrList(
              //   title: "UI Example",
              //   items: controller.uiExampleItems,
              //   color: Colors.cyan,
              // ),
              // TrList(
              //   title: "Local Storage",
              //   items: controller.localStorageItems,
              //   color: Colors.brown,
              // ),
              title("Exercise"),
              TrList(
                title: "State Management Exercise",
                items: controller.stateManagementExerciseList,
                color: Colors.green,
              ),
              TrList(
                title: "Form Exercise",
                items: controller.formExerciseList,
                color: Colors.green,
                head: const TrFormExample(),
              ),
              TrList(
                title: "HTTP Exercise",
                items: controller.httpExerciseList,
                color: Colors.purple,
              ),
              TrList(
                title: "Local Storage Exercise",
                items: controller.lsExerciseList,
                color: Colors.blueAccent,
              ),
              const TrList(
                title: "Firebase Exercise (Coming Soon)",
                items: [],
                color: Colors.orange,
              ),
              const SizedBox(
                height: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  title(String title) {
    return SizedBox(
      width: MediaQuery.of(globalContext).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
