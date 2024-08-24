import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fourth.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 370,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Vector-Section.png"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                  decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: "Chose your gender",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                  decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: "Date of Birth",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                  decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: "your weight",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                  decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: "your height",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50,
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(50)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const workoutScreen());
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
