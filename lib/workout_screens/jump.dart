import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

import 'fullbody.dart';

class runf extends StatefulWidget {
  const runf({super.key});

  @override
  State<runf> createState() => _runfState();
}

class _runfState extends State<runf> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Workout Tracker',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: Screenwidth * 0.90,
                    height: Screenheight * 0.20,
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          image: AssetImage('assets/images/work.png'),
                        ))),
              ],
            ),
            Column(
              children: [
                Container(
                  height: Screenheight * 80,
                  width: Screenwidth,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: Screenwidth * 0.15,
                                width: Screenwidth * 0.90,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Daily Workout Schedule',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        height: 40,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: const Center(
                                          child: Text(
                                            'check',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Upcoming workout',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  'see more',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: Screenheight * 0.09,
                              width: Screenwidth * 0.90,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      maxRadius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/Vector.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Fullbody Workout',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Today 3pm',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: Screenheight * 0.09,
                              width: Screenwidth * 0.90,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      maxRadius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/Workout-Pic.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'sixpack Workout',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Today 4pm',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'What Do You Want To Train',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(const FullbodyScreen());
                            },
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: Container(
                                  height: Screenheight * 0.20,
                                  width: Screenwidth * 0.90,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Fullbody-Card.png"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Container(
                                height: Screenheight * 0.20,
                                width: Screenwidth * 0.90,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Lowerbody-Card.png"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Container(
                                height: Screenheight * 0.20,
                                width: Screenwidth * 0.90,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/AB-Workout-Card.png"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
