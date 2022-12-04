import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TfMainNavigationView extends StatefulWidget {
  const TfMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, TfMainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 3,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [
            TfDashboardView(),
            TfUserListView(),
            TfProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) {
            controller.updateIndex(newIndex);
          },
          currentIndex: controller.selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "User",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TfMainNavigationView> createState() => TfMainNavigationController();
}
