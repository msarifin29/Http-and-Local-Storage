import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsUserSettingView extends StatefulWidget {
  const LsUserSettingView({Key? key}) : super(key: key);

  Widget build(context, LsUserSettingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsUserSetting"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              TODO: --
              Ini sangat mudah, cukup ambil nilai storage-nya dan atur sebagai
              value dari SwitchListTile.
              Berikut adalah contoh-nya:
              */
              SwitchListTile(
                value: mainStorage.get("dev_mode") ?? false,
                title: const Text("Dev mode"),
                onChanged: (value) {
                  var current = mainStorage.get("dev_mode") ?? false;
                  mainStorage.put("dev_mode", !current);
                  controller.setState(() {});
                },
              ),
              /*
              1. Ok, dengan contoh di atas, buatlah beberapa pengaturan
              dengan SwitchListTile!
              ! Pastikan key yang digunakan berbeda!
              ! sesuaikan label-nya

              - Dark mode
              - Login as Admin
              - Experimental mode
              - Offline mode
              - Cache mode

              2. Coba ubah ke5 switchlist tile yang baru dibuat menjadi:
              - Dark mode => true
              - Login as Admin => false
              - Experimental mode => true
              - Offline mode => false
              - Cache mode => true

              Jika perubahan yang kamu lakukan tidak mempengarungi
              Switch yang lainnya, maka task ini selesai!
              */
              SwitchListTile(
                value: mainStorage.get("Dark_mode") ?? true,
                title: const Text("Dark mode"),
                onChanged: (value) {
                  var current = mainStorage.get("Dark_mode") ?? true;
                  mainStorage.put("Dark_mode", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("Admin") ?? false,
                title: const Text("Admin"),
                onChanged: (value) {
                  var current = mainStorage.get("Admin") ?? false;
                  mainStorage.put("Admin", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("Experimental") ?? true,
                title: const Text("Experimental"),
                onChanged: (value) {
                  var current = mainStorage.get("Experimental") ?? true;
                  mainStorage.put("Experimental", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("Offline") ?? false,
                title: const Text("Offline"),
                onChanged: (value) {
                  var current = mainStorage.get("Offline") ?? false;
                  mainStorage.put("Offline", !current);
                  controller.setState(() {});
                },
              ),
              SwitchListTile(
                value: mainStorage.get("Cache") ?? true,
                title: const Text("Cache"),
                onChanged: (value) {
                  var current = mainStorage.get("Cache") ?? true;
                  mainStorage.put("Cache", !current);
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
  State<LsUserSettingView> createState() => LsUserSettingController();
}
