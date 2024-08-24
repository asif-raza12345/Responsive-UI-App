import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../icone item/activity_tracker.dart';
import '../workout_screens/jump.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Welcome Back",style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,)),
                    Icon(Icons.notification_add_rounded)
                  ],
                ),
              ),
               Container(
                  height: Get.height* 0.3,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Banner.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(
                  height: Get.height * 0.08,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("Today Target",style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,)),
                      ),
                      TextButton(onPressed: (){}, child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text("check out",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Activity status",style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: Get.height* 0.3,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Status.png'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child:
                  Container(
                    height: Get.height* 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Status (1).png'),
                        fit: BoxFit.fitWidth
                      )
                    ),
                  )),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: SizedBox(
                      height: Get.height * 0.4,
                      child: Column(
                        children: [
                          Expanded(child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/Status (2).png'),
                                fit: BoxFit.cover
                              )
                            ),
                          )),
                          const SizedBox(height: 10,),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/st.png'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text('Workout progress',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                  height: 200,
                  width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Graph.png')
                      )
                    ),
                ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Graphics - Modal.png')
                          )
                      ),

                    ),
                  )
              ]),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text('Workout progress',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
              const SizedBox(height: 10,),
              TextButton(onPressed: (){
                Get.to(const ActivityTrackerScreen(weaklysummary: [],));
              },
                child: Card(
                  child:
                Container(
                  height: screenheight * .10,
                  width: screenwidth * 75,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage('assets/images/Vector.png'),
                                    fit: BoxFit.cover
                                )
                          ),
                        ),
                      ),
                      const SizedBox( width: 20,),
                       const Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Full Body work out',style: TextStyle(
                            color:Colors.black,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 10,),
                          Text("180 calories Burn | 30 minutes",style: TextStyle(
                            color: Colors.black45
                          ),),
                        ],
                      ),
                    ],
                  ),
                )
                ),
              ),
              const SizedBox(height: 20,),
              TextButton(onPressed: (){
                Get.to(const runf());
              },
                child: Card(
                    child:
                    Container(
                      height: screenheight * .10,
                      width: screenwidth * 75,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                  color: Colors.blueGrey,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('assets/images/Workout-Pic.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                          const SizedBox( width: 20,),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('small Body work out'),
                              SizedBox(height: 10,),
                              Text("180 calories Burn | 30 minutes",style: TextStyle(
                                  color: Colors.black45
                              ),),
                            ],
                          ),
                        ],
                      ),
                    )
                ),
              )
            ]
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'person',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: 'search',
          ),
        ],


      )
      );

  }
}
