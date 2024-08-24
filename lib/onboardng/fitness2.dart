import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_tutorial/onboardng/onboarding1.dart';
import 'package:google_fonts/google_fonts.dart';

class fitnesScreen extends StatefulWidget {
  const fitnesScreen({super.key});

  @override
  State<fitnesScreen> createState() => _fitnesScreenState();
}

class _fitnesScreenState extends State<fitnesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      color: Colors.white,
                      width: Get.width,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Fitness",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                          Text("X",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30))
                        ],
                      ))),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        height: 50,
                        width: Get.width * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: TextButton(
                          onPressed: () {
                            Get.to(const FisrtScreen());
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ],
          )),
    ));
  }
}
