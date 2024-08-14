import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find();

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(labelText: "Password"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.login("email@example.com", "password123");
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
