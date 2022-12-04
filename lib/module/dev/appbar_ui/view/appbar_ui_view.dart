// ignore_for_file: avoid_unnecessary_containers

import 'package:badges/badges.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

class AppbarUiView extends StatefulWidget {
  const AppbarUiView({Key? key}) : super(key: key);

  Widget build(context, AppbarUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppbarUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  extendBody: true,
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    title: const Text("Basic Appbar"),
                  ),
                  body: Container(
                    child: Column(
                      children: [
                        Container(
                          height: AppBar().preferredSize.height,
                          decoration: BoxDecoration(
                            color: Colors.red[200],
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.green,
                                Colors.blue,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  extendBody: true,
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    title: const Text("Basic Appbar"),
                  ),
                  body: Container(
                    child: Column(
                      children: [
                        ClipPath(
                          clipper: SinCosineWaveClipper(),
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.green,
                                  Colors.blue,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  extendBody: true,
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    title: const Text("Basic Appbar"),
                  ),
                  body: Container(
                    child: Column(
                      children: [
                        ClipPath(
                          clipper: MultiplePointsClipper(
                            Sides.bottom,
                            heightOfPoint: 50,
                          ),
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.green,
                                  Colors.blue,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    leading: const Icon(Icons.menu),
                    title: Column(
                      children: const [
                        Text("Your Purchase"),
                        Text(
                          "Ecommerce",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.shopping_cart),
                          label: const Text("14"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    leading: const Icon(Icons.menu),
                    title: const Text("Supermart"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: successColor,
                            backgroundColor: successColor.withOpacity(0.3),
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: const Text("Launch"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text(
                          "DO",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    title: const Text("Supermart"),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 24.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  appBar: AppBar(
                    leading: const Icon(Icons.menu),
                    title: const Text("Jessica"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeContent: const Text('2'),
                          child: const Icon(Icons.chat),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeContent: const Text('3'),
                          child: const Icon(Icons.notifications),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Text(
                            "DO",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  appBar: AppBar(
                    leading: const Icon(Icons.menu),
                    title: const Text("Jessica"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeContent: const Text('2'),
                          child: const Icon(Icons.chat),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeContent: const Text('3'),
                          child: const Icon(Icons.notifications),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scaffold(
                  appBar: AppBar(
                    leading: const Icon(Icons.menu),
                    title: const Text("Jessica"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeContent: const Text('2'),
                          child: const Icon(Icons.chat),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          badgeContent: const Text('3'),
                          child: const Icon(Icons.notifications),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AppbarUiView> createState() => AppbarUiController();
}
