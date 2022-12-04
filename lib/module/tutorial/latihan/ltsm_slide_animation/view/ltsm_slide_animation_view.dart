import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_slide_animation_controller.dart';

class LtsmSlideAnimationView extends StatefulWidget {
  const LtsmSlideAnimationView({Key? key}) : super(key: key);

  Widget build(context, LtsmSlideAnimationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmSlideAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Buat variabel animate di dalam State/Controller
              // bool animate = false;
              AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.only(
                  //
                  //jika animate == true, atur left menjadi 200
                  //jika animate == false, atur left menjadi 0
                  left: controller.animated ? 200.0 : 0.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //
              //di dalam event onPressed(),
              //atur animate = true, jika nilai animate adalah false
              //atur animate = false, jika nilai animate adalah true
              ElevatedButton.icon(
                icon: const Icon(Icons.animation),
                label: const Text("Animate"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.animated = controller.animated ? false : true;
                  controller.setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmSlideAnimationView> createState() => LtsmSlideAnimationController();
}
