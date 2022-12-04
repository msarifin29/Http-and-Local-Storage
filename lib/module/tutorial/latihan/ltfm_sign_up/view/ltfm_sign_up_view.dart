import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buatlah textfield email
              QTextField(
                label: "Email",
                hint: "Your email",
                validator: Validator.email,
                value: "demo@gmail.com",
                onChanged: (value) {},
              ),
              //! 2. Buatlah textfield password
              QTextField(
                label: "Password",
                hint: "Your password",
                obscure: true,
                validator: Validator.required,
                value: "123456",
                onChanged: (value) {},
              ),
              //! 3. Buatlah textfield confirm password
              QTextField(
                label: "Confirm Password",
                hint: "Confirm Your password",
                obscure: true,
                validator: Validator.required,
                value: "123456",
                onChanged: (value) {},
              ),
              //! 4. Buat sebuah tombol,
              ElevatedButton(
                onPressed: controller.doLogin(),
                child: const Text("Login"),
              ),
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
