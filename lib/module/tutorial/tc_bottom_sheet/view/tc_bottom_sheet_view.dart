import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TcBottomSheetView extends StatefulWidget {
  const TcBottomSheetView({Key? key}) : super(key: key);

  Widget build(context, TcBottomSheetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TcBottomSheet"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 28.0,
                    child: Icon(
                      Icons.add,
                      size: 28.0,
                    ),
                  ),
                ],
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
                  showCustomBottomSheet("Hello bro, apa kabar?");
                },
                child: const Text("Show bottom sheet"),
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
                  showCustomBottomSheet(
                    "Hello bro, apa kabar?",
                    color: Colors.red,
                  );
                },
                child: const Text("Show bottom sheet (Color)"),
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
                  showCustomBottomSheet(
                    "",
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/PGv8ZzG/me.jpg",
                        ),
                      ),
                      const Text(
                        "Deny",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "denyocr.world@gmail.com",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  );
                },
                child: const Text("Show bottom sheet (Custom)"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TcBottomSheetView> createState() => TcBottomSheetController();
}

Future showCustomBottomSheet(
  String message, {
  Color? color,
  List<Widget>? children,
}) async {
  await showModalBottomSheet<void>(
    context: globalContext,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
        ),
        child: Wrap(
          children: [
            if (children != null)
              Column(
                children: children,
              ),
            if (children == null)
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(message),
                    const SizedBox(
                      height: 20.0,
                    ),
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
                ),
              ),
          ],
        ),
      );
    },
  );
}
