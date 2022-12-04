import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TutorialNavigationItem extends StatelessWidget {
  final Map<String, dynamic> item;
  final double size;
  final int index;
  final Color? color;

  const TutorialNavigationItem({
    Key? key,
    required this.item,
    required this.size,
    required this.index,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(2.0),
          backgroundColor: color ?? Colors.orange[900],
        ),
        onPressed: () {
          Get.to(item["view"]);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${item["label"]}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10.0,
              ),
            ),
            Text(
              "#${index + 1}",
              style: const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
