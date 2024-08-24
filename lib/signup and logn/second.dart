import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/signup%20and%20logn/seven.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fourth.dart';

class MailtracketScreen extends StatefulWidget {
  const MailtracketScreen({super.key});

  @override
  State<MailtracketScreen> createState() => _MailtracketScreenState();
}

class _MailtracketScreenState extends State<MailtracketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Goal',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    "what is your  goal ?",
                    style: GoogleFonts.acme(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  const Center(
                      child: Text(
                    "It will help us to choose a best",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  )),
                  const Center(
                      child: Text(
                    "  program for you?",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.height * 0.5,
                  width: Get.width * 0.03,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(
                            10,
                          ),
                          bottomRight: Radius.circular(10))),
                ),
                Container(
                  height: 460,
                  width: 275,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/Card-Goals-2.png"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: Get.height * 0.5,
                  width: Get.width * 0.03,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            10,
                          ),
                          bottomLeft: Radius.circular(10))),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50,
                width: Get.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(50)),
                child: TextButton(
                  onPressed: () {
                    Get.to(const teackScreen());
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
