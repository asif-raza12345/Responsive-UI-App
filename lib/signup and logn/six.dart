import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/signup%20and%20logn/third.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fifth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Login',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  const Center(
                      child: Text(
                    "Hi there",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  )),
                  Center(
                      child: Text(
                    "Welcome Back",
                    style: GoogleFonts.acme(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text("Forget your password"),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
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
                    Get.to(const MainScreen());
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Don't have an account yet? ",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(const fistScreen());
                  },
                  child: const Text(
                    "Register,",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ))
            ])
          ]),
        ));
  }
}
