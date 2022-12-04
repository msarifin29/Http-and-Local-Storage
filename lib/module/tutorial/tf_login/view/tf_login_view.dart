import 'package:flutter/material.dart';
import 'package:example/core.dart';

/*
Setup Project
Setup FlutterFire Cli

Register
Login by Email n Password
Login by Google
Edit Profil
Logout
User List
CRUD Product
*/
class TfLoginView extends StatefulWidget {
  const TfLoginView({Key? key}) : super(key: key);

  Widget build(context, TfLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TfLogin"),
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
                        value: controller.email,
                        onChanged: (value) {
                          controller.email = value;
                        },
                      ),
                      QTextField(
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.required,
                        value: controller.password,
                        onChanged: (value) {
                          controller.password = value;
                        },
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () => controller.doLogin(),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(MdiIcons.google),
                        label: const Text("Google"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () => controller.doLoginByGoogle(),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.person_outline),
                        label: const Text("Guest"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () => controller.doLoginByGuest(),
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
  State<TfLoginView> createState() => TfLoginController();
}
