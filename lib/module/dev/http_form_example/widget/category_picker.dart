import 'package:flutter/material.dart';

class QCategoryPicker extends StatefulWidget {
  final List items;
  final Function(Map value) onTap;

  const QCategoryPicker({
    Key? key,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  @override
  State<QCategoryPicker> createState() => _QCategoryPickerState();
}

class _QCategoryPickerState extends State<QCategoryPicker> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        itemCount: widget.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = widget.items[index];
          var selected = selectedIndex == index;

          return Container(
            margin: const EdgeInsets.only(
              right: 10.0,
            ),
            child: ElevatedButton.icon(
              icon: Icon(
                item["icon"],
                color: selected ? Colors.white : Colors.blueGrey,
              ),
              label: Text(
                "${item["label"]}",
                style: TextStyle(
                  color: selected ? Colors.white : Colors.blueGrey,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(64.0),
                ),
                backgroundColor: selected ? Colors.blueGrey : Colors.grey[300],
              ),
              onPressed: () {
                selectedIndex = index;
                setState(() {});
                widget.onTap(item);
              },
            ),
          );
        },
      ),
    );
  }
}
