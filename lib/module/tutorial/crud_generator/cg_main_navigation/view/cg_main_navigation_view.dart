import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/cg_main_navigation_controller.dart';

class CgMainNavigationView extends StatefulWidget {
  const CgMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, CgMainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: const [
            CgDashboardView(),
            CgModuleListView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) {
            controller.selectedIndex = newIndex;
            controller.setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboad",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_board),
              label: "Module",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CgMainNavigationView> createState() => CgMainNavigationController();
}
