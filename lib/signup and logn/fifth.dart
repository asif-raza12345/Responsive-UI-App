import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/signup%20and%20logn/six.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fist..dart';

class fistScreen extends StatefulWidget {
  const fistScreen({super.key});

  @override
  State<fistScreen> createState() => _fistScreenState();
}

class _fistScreenState extends State<fistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                  child: Text(
                "Hey There",
                style: TextStyle(color: Colors.black, fontSize: 22),
              )),
            ),
            Center(
                child: Text(
              "You Create an account?",
              style: GoogleFonts.acme(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: "First name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: "Last name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                labelText: "Enter email",
                hintText: "@gmail.com",
                suffixIcon: const Icon(Icons.email),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                labelText: "Enter password",
                suffixIcon: const Icon(Icons.lock),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(children: [
              Icon(Icons.check_box_outline_blank),
              Text("By continuing you accept our "),
              Text("Privacy"
                  ""),
            ]),
            const SizedBox(
              height: 50,
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
                    Get.to(const SecondScreen());
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: const Text(
                    "you have an already account",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ]),
        ),
      ])),
    ));
  }
}
