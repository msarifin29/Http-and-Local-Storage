// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TkMainNavigationView extends StatefulWidget {
  const TkMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, TkMainNavigationController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData(
        canvasColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraint) {
          return SafeArea(
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                int sensitivity = 8;
                if (details.delta.dy > sensitivity) {
                  // Down Swipe
                  controller.onSwipeDown(constraint);
                } else if (details.delta.dy < -sensitivity) {
                  // Up Swipe
                  controller.onSwipeUp(constraint);
                }
              },
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.green,
                      child: ListView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.posts.length,
                        itemBuilder: (context, index) {
                          var item = controller.posts[index];

                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: NetworkImage(
                                  item["photo"],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 8.0,
                              ),
                              child: Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 4.0,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          height: 10.0,
                          width: 1.0,
                          margin: const EdgeInsets.symmetric(horizontal: 6.0),
                        ),
                        const Text(
                          "For you",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Stack(
                              children: const [
                                SizedBox(
                                  height: 60.0,
                                  child: CircleAvatar(
                                    radius: 26,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 8,
                                    child: Icon(
                                      Icons.add,
                                      size: 8.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "100.2k",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.chat,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "50.2k",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.share,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "130.2k",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const TKRotatedCircleAvatar(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 100,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "@codingwithdeny",
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "Tutorial membuat UI di Flutter, gampang banget!",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "#android #ios #desktop #web #flutter #mobile",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TkSLidingText(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[800],
          selectedLabelStyle: const TextStyle(
            fontSize: 0.0,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 0.0,
          ),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50.0,
                  height: 36.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              label: "Add",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "Chat",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TkMainNavigationView> createState() => TkMainNavigationController();
}
