import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controller/homecontroller.dart';
import 'package:getx_sample/secondscreen.dart';

class Homescreen extends StatelessWidget {
   Homescreen({super.key});


  final HomepageController controller = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'GetX Sample',
          style: TextStyle(fontFamily: 'Belanosima', color: Colors.white),
        ), 
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();  
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () =>  Text(
                controller.count.value.toString(), 
                style: const TextStyle(fontSize: 75),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar('GetX snackbar', 'sample snackbar',snackPosition: SnackPosition.BOTTOM);  
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                  child: const Text(
                    'Show snackbar ',
                    style: TextStyle(
                        fontFamily: 'Belanosima', color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: 'GetX dialogle',
                      textConfirm: 'okey',
                      textCancel: 'cancel'  
                    ); 
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                  child: const Text(
                    'Show Dialogbox',
                    style: TextStyle(
                        fontFamily: 'Belanosima', color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(SecondScreen(),transition: Transition.fade ); 
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                  child: const Text(
                    'go to next screen',
                    style: TextStyle(
                        fontFamily: 'Belanosima', color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
