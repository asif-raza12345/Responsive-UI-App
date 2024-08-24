import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Dashboard/HomeScreen.dart';

class FullbodyScreen extends StatefulWidget {
  const FullbodyScreen({super.key});

  @override
  State<FullbodyScreen> createState() => _FullbodyScreenState();
}

class _FullbodyScreenState extends State<FullbodyScreen> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Fullbody Tracker',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: Screenwidth * 0.90,
                    height: Screenheight * 0.20,
                    color: Colors.blueAccent,
                    child: const Center(
                      child: CircleAvatar(
                        maxRadius: 70,
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage('assets/images/man_2_.png'),
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: Screenheight * 80,
              width: Screenwidth,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Fullbody Workout",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: Screenheight * 0.06,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.date_range,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Schedule Workout',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: Screenheight * 0.06,
                            decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.swap_vert,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Difficulity',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You'll Need",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            '5 items',
                            style: TextStyle(color: Colors.black45),
                          )
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: Screenheight * 0.15,
                            width: Screenwidth * 0.35,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/barbel.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: Screenheight * 0.15,
                            width: Screenwidth * 0.35,
                            decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/skipping-rope.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: Screenheight * 0.15,
                            width: Screenwidth * 0.35,
                            decoration: BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/barbel.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: Screenheight * 0.15,
                            width: Screenwidth * 0.35,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/water-bottle.png'))),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: Screenheight * 0.15,
                            width: Screenwidth * 0.35,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/skipping-rope.png'))),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Exercises',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Set1',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: Screenheight * 0.13,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  height: Screenheight * 0.13,
                                  width: Screenwidth * 0.20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://static.toiimg.com/photo/71956822.cms"),
                                          fit: BoxFit.cover)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 20, bottom: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [Text("Worm up"), Text("05:00")],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: Screenheight * 0.10,
                          color: Colors.white,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: Screenheight * 0.13,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  height: Screenheight * 0.13,
                                  width: Screenwidth * 0.20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/everything-you-need-to-know-about-cardio-1229553-8e08847ffcfb4845b29c08fa27e76d32.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 20, bottom: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [Text("Warmup"), Text("05:00")],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: Screenheight * 0.10,
                          color: Colors.white,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: Screenheight * 0.13,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  height: Screenheight * 0.13,
                                  width: Screenwidth * 0.20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Health-GettyImages-1411330495-f398930655c5431d85983febb6aa5f7c.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 20, bottom: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Arm Roises"),
                                      Text("05:00")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: Screenheight * 0.10,
                          color: Colors.white,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: Screenheight * 0.13,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  height: Screenheight * 0.13,
                                  width: Screenwidth * 0.20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/1.webp"),
                                          fit: BoxFit.cover)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, top: 20, bottom: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [Text("Squats"), Text("05:00")],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: Screenheight * 0.10,
                          color: Colors.white,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(const homeScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: Screenwidth * 0.50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                              child: Text(
                                "Finished",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
