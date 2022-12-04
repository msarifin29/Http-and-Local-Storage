import 'package:flutter/material.dart';
import 'package:example/core.dart';

/*
Web, Android, IOS,
Desktop (Windows, MacOS, LINUX)
*/
class TcDialogView extends StatefulWidget {
  const TcDialogView({Key? key}) : super(key: key);

  Widget build(context, TcDialogController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TcDialog"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () async {
                  showCustomDialog("Success", "Your order is complete");
                },
                child: const Text("Show Dialog"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () async {
                  showCustomDialog("Info", "Your order is not complete");
                },
                child: const Text("Show Info"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () async {
                  showCustomDialog(
                    "Custom Color",
                    "Your order is not complete",
                    color: Colors.red,
                  );
                },
                child: const Text("Custom Color "),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () async {
                  showCustomDialog(
                    "3s Dialog",
                    "Your order is not complete",
                    color: Colors.orange[900],
                    duration: const Duration(seconds: 3),
                  );
                },
                child: const Text("3s Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TcDialogView> createState() => TcDialogController();
}

Future showCustomDialog(
  title,
  message, {
  Color? color,
  Duration? duration,
}) async {
  if (duration != null) {
    Future.delayed(duration, () {
      Navigator.pop(globalContext);
    });
  }
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: color,
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
        actions: <Widget>[
          if (duration == null)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            ),
        ],
      );
    },
  );
}
