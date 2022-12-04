import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TcSnackbarView extends StatefulWidget {
  const TcSnackbarView({Key? key}) : super(key: key);

  Widget build(context, TcSnackbarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TcSnackbar"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text(
                "Hello",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Snackbar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  showCustomSnackbar("Hello world");
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Snackbar (Color)"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  showCustomSnackbar(
                    "Hello world",
                    color: Colors.red,
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Snackbar (Color + Icon)"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  showCustomSnackbar(
                    "Hello world",
                    color: Colors.yellow,
                    icon: Icons.help,
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Snackbar (Custom"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  showCustomSnackbar(
                    "",
                    child: Container(
                      height: 400.0,
                      color: Colors.blue,
                      child: Column(
                        children: const [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                          Text(
                            "Deny",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TcSnackbarView> createState() => TcSnackbarController();
}

showCustomSnackbar(
  String message, {
  Color? color,
  IconData? icon,
  Widget? child,
}) async {
  var snackBar = SnackBar(
    padding: const EdgeInsets.all(0.0),
    backgroundColor: color,
    content: child ??
        Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                color: Colors.black,
              ),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
  );

  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
