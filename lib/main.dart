import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/onboardng/fitness1.dart';
import 'package:getx_tutorial/onboardng/onboarding6.dart';
import 'package:getx_tutorial/signup%20and%20logn/fifth.dart';
import 'package:getx_tutorial/signup%20and%20logn/fist..dart';
import 'package:getx_tutorial/signup%20and%20logn/fourth.dart';
import 'package:getx_tutorial/signup%20and%20logn/second.dart';
import 'package:getx_tutorial/signup%20and%20logn/seven.dart';
import 'package:getx_tutorial/signup%20and%20logn/six.dart';
import 'package:getx_tutorial/signup%20and%20logn/third.dart';
import 'package:getx_tutorial/splash_code/splashscreen.dart';

import 'Dashboard/HomeScreen.dart';

import 'onboardng/fitness2.dart';
import 'onboardng/onboarding1.dart';
import 'onboardng/onboarding3.dart';
import 'onboardng/onboarding4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      getPages: [
        GetPage(name: '/', page: () => const fitnessScreen()),
        GetPage(name: '/fitnesScreen', page: () => const fitnesScreen()),
        GetPage(name: '/FisrtScreen', page: () => const FisrtScreen()),
        GetPage(name: '/burnScreen', page: () => const burnScreen()),
        GetPage(name: '/eatScreen', page: () => const eatScreen()),
        GetPage(name: '/goalScreen', page: () => const goalScreen()),
        GetPage(name: '/fistScreen', page: () => const fistScreen()),
        GetPage(name: '/SecondScreen()', page: () => const SecondScreen()),
        GetPage(name: '/workoutScreen()', page: () => const workoutScreen()),
        GetPage(
            name: '/MailtracketScreen()',
            page: () => const MailtracketScreen()),
        GetPage(name: '/teackScreen()', page: () => const teackScreen()),
        GetPage(name: '/LoginScreen()', page: () => const LoginScreen()),
        GetPage(name: '/MainScreen()', page: () => const MainScreen()),
        GetPage(name: '/homeScreen()', page: () => const homeScreen()),
        GetPage(name: '/homeScreen()', page: () => const homeScreen()),
      ],
    );
  }
}
