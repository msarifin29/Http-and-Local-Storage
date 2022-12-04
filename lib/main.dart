import 'package:example/core.dart';
import 'package:example/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*
LINK KOMUNITAS
! https://tinyurl.com/join-berandal
*/
void main() async {
  await initialize();
  // windows, android, ios
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }
  mainStorage = await Hive.openBox('mainStorage');

  await UserService.load();
  await ThemeService.load();
  await LocalProductService.load();
  await FormHistoryService.load();
  AppSession.token = await mainStorage.get("token") ?? "";

  // print("mainStorage.isOpen: ${mainStorage.isOpen}");
  // print("storage: ${await mainStorage.get("token")}");
  // print("-----");
  // await mainStorage.put("mode", "JRocks");

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    // home: const TemplateCardView(),
    // home: const AckTutorialCartView(),
    // home: const TrBasicWidgetView(),
    // home: const TrExampleView(),
    home: const TrView(),
    // home: const UiDailiyTodoListView(),
    // home: const LifeCycleDemoView(),
  ));
}


/*
CRUD Generator
data-nya bisa di custom secara realtime.
Bisa ditentukan jenis textfield-nya:
- textfield
- numberfield
- photo
- memofield
*/