import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Dashboard/HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Confirm',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Center(
                child: Container(
                  height: Get.height * 0.5,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/Group.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: Get.width * 0.7,
            decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(50)),
            child: TextButton(
              onPressed: () {
                Get.to(const homeScreen());
              },
              child: const Text(
                "Confirm",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
