import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/onboardng/onboarding6.dart';
import 'package:google_fonts/google_fonts.dart';

class sleepScreen extends StatefulWidget {
  const sleepScreen({super.key});

  @override
  State<sleepScreen> createState() => _sleepScreenState();
}

class _sleepScreenState extends State<sleepScreen> {
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
                      image: AssetImage("assets/images/sleep.png"),
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
                        "Improve Your Sleep",
                        style: GoogleFonts.acme(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "Quality",
                        style: GoogleFonts.acme(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const Text(
                        "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ]),
              ),
              const SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[300], shape: BoxShape.circle),
                      child: TextButton(
                        onPressed: () {
                          Get.to(const goalScreen());
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
