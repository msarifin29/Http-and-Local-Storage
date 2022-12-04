import 'package:example/core.dart';
import 'package:example/module/tutorial/tr_example/controller/tr_example_controller.dart';
import 'package:flutter/material.dart';

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);

  Widget build(context, TrExampleController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: controller.counter,
                builder: (
                  BuildContext context,
                  counterValue,
                  _,
                ) {
                  return Text(
                    "Counter: $counterValue",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Obx(controller.counter, (vn) {
                return Text("Counter: ${vn.value}");
              }),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.counter.value++;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrExampleView> createState() => TrExampleController();
}
