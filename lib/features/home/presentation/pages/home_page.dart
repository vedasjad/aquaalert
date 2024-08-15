import 'package:aquaalert/core/resources/resources.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          AppImages.profileImage,
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
