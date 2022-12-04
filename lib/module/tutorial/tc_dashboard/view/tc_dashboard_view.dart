import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TcDashboardView extends StatefulWidget {
  const TcDashboardView({Key? key}) : super(key: key);

  Widget build(context, TcDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TcDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.arrow_back),
                label: const Text("Back"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Nav.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TcDashboardView> createState() => TcDashboardController();
}
