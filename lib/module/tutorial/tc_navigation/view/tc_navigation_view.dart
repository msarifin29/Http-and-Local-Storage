import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TcNavigationView extends StatefulWidget {
  const TcNavigationView({Key? key}) : super(key: key);

  Widget build(context, TcNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TcNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.golf_course),
                label: const Text("Go to Dashboard"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Nav.to(const TcDashboardView());
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.golf_course),
                label: const Text("Go to Dashboard (OFF)"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Nav.offAll(const TcDashboardView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TcNavigationView> createState() => TcNavigationController();
}

class Nav {
  static Future to(Widget view) async {
    await Navigator.push(
      globalContext,
      MaterialPageRoute(builder: (context) => view),
    );
  }

  static Future offAll(Widget view) async {
    Get.navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => view),
      (Route<dynamic> route) => false,
    );
  }

  static Future back() async {
    Navigator.pop(globalContext);
  }
}
