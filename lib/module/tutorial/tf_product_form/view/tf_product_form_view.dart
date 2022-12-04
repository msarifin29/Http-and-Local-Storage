import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TfProductFormView extends StatefulWidget {
  final Map? item;
  const TfProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, TfProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        hint: "Your photo",
                        validator: Validator.required,
                        value: item?["photo"],
                        onChanged: (value) {
                          controller.photo = value;
                        },
                      ),
                      QTextField(
                        label: "Product name",
                        hint: "Name",
                        validator: Validator.required,
                        value: item?["product_name"],
                        onChanged: (value) {
                          controller.productName = value;
                        },
                      ),
                      QNumberField(
                        label: "Price",
                        hint: "Your product price",
                        validator: Validator.required,
                        value: item?["price"].toString(),
                        onChanged: (value) {
                          controller.price = double.parse(value);
                        },
                      ),
                      QMemoField(
                        label: "Description",
                        hint: "Your addresses",
                        validator: Validator.required,
                        value: item?["description"],
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TfProductFormView> createState() => TfProductFormController();
}
