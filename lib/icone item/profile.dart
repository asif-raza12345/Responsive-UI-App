import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'finished.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile"
            "",style: GoogleFonts.aBeeZee(
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: const  BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/eating.jpg'),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text('Stefon Wang',style: TextStyle(
                      color: Colors.black,
                        fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),),
                    Text('Lose a fat program')
                  ],
                ),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(onPressed: (){
                    Get.to(const FinishedScreen());
                  },
                    child: const Center(child: Text("Edit",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),)),
                  ),
                )
              ],
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                elevation: 2,
                child: Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Column(
                    children: [
                      Text("180 cm",style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      Text("Hight",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                    ],
                  ),
                ),

              ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    elevation: 2,
                    child: Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const  Column(
                        children: [
                          Text("53kg",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18
                          ),),
                          Text("Weight",style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                          ),),
                        ],
                      ),
                    ),

                  ),

                  Card(
                    elevation: 2,
                    child: Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const  Column(

                        children: [
                          Text("22yo",style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                          Text("Age",style: TextStyle(
                              color: Colors.black,

                              fontSize: 15
                          ),),
                        ],
                      ),
                    ),
                  ),
                  ]
              ),
             const SizedBox(height: 20,),
              const Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Account',style: TextStyle(color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.person,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('Personal Data',style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.wine_bar,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('Achievement',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.account_balance_wallet_sharp,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('Activity History',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.work_history,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('Workout Progress',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),


                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Notifications',style: TextStyle(color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.notification_add,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('pop_up Notification',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('others',style: TextStyle(color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('Contact us',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down_sharp,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('privacy policy',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.settings,color: Colors.blue,size: 25,),
                          SizedBox(width: 10,),
                          Text('Settings',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.normal
                          ),)
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
