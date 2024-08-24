import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding4.dart';

class burnScreen extends StatefulWidget {
  const burnScreen({super.key});

  @override
  State<burnScreen> createState() => _burnScreenState();
}

class _burnScreenState extends State<burnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: Get.height * 0.4,
                width: Get.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/run.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Burn",
                        style: GoogleFonts.acme(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const Text(
                        "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ]),
              ),
              const SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[300], shape: BoxShape.circle),
                      child: TextButton(
                        onPressed: () {
                          Get.to(const eatScreen());
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    ));
  }
}
