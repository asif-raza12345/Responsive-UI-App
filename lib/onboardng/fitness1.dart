import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fitness2.dart';

class fitnessScreen extends StatefulWidget {
  const fitnessScreen({super.key});

  @override
  State<fitnessScreen> createState() => _fitnessScreenState();
}

class _fitnessScreenState extends State<fitnessScreen> {
  @override
  Widget build(BuildContext context) {
    double Screenheright = MediaQuery.of(context).size.height;
    double Screenweidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'App Design',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Looking for a Custom App Design?",
                      style: GoogleFonts.acme(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  const Text(
                    "We'd love to help. At Pixel True We provide an experienced design team that works with you everyday to create high-quality design assets to help grow your business.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  Container(
                    height: Screenheright * 0.50,
                    width: Get.width * 1,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('assets/images/uiux.png'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                      height: Get.height * 0.07,
                      width: Get.width * 0.4,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: TextButton(
                        onPressed: () {
                          Get.to(const fitnesScreen());
                        },
                        child: const Text(
                          'Learn More',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        ),
                      )),
                ]),
              )
            ],
          ),
        ));
  }
}
