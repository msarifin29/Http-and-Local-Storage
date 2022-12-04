import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TfRegisterView extends StatefulWidget {
  const TfRegisterView({Key? key}) : super(key: key);

  Widget build(context, TfRegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfRegister"),
        actions: const [],
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
                      QTextField(
                        label: "Email",
                        hint: "Your email",
                        validator: Validator.email,
                        value: "",
                        onChanged: (value) {
                          controller.email = value;
                        },
                      ),
                      QTextField(
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.required,
                        value: "",
                        onChanged: (value) {
                          controller.password = value;
                        },
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.app_registration_rounded),
                        label: const Text("Register"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doRegister(),
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
  State<TfRegisterView> createState() => TfRegisterController();
}
