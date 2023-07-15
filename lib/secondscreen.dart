import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back(); 
          },
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.teal)),
          child: const Text('Go back',style: TextStyle(color: Colors.white),), 
        ),
      ),
    );
  }
}
