import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/Bar%20chart/bardata.dart';
import 'package:getx_tutorial/icone%20item/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityTrackerScreen extends StatefulWidget {
  final List weaklysummary;
  const ActivityTrackerScreen({super.key,required this.weaklysummary});

  @override
  State<ActivityTrackerScreen> createState() => _ActivityTrackerScreenState();
}

class _ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  List<double> weaklysummary = [
    4.40,
    50.50,
    30.90,
    35.5,
    50.5,
    89.0,
    90.0,
  ];
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    BarData myBarData = BarData(
        sunAmount: weaklysummary[0],
        monAmount: weaklysummary[1],
        tueAmount: weaklysummary[2],
        wedAmount: weaklysummary[3],
        thurAmount: weaklysummary[4],
        friAmount: weaklysummary[5],
        satAmount: weaklysummary[6]
    );
    myBarData.initializebarData();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Activity Tracker",style: GoogleFonts.aBeeZee(
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Container(
                        height: screenheight * 0.20,
                        width: screenwidth * 0.90,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/activity.png"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Activity progress",style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text("weekly",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Center(
                    child: SizedBox(
                      height: screenheight * 0.25,
                      width: screenwidth * 0.90,
                     child: BarChart(
                       BarChartData(
                         maxY: 100,
                         minY: 0,
                         gridData: const FlGridData(
                           show: false,),
                         borderData: FlBorderData(show: false),
                         titlesData: const FlTitlesData(show: true,
                           topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                             leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                             rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))
                         ),
                         barGroups: myBarData.barData.map((data) => BarChartGroupData(x: data.x,
                           barRods: [BarChartRodData(toY: data.y,color: Colors.grey[800],width: 20,
                             borderRadius: BorderRadius.circular(4),
                             backDrawRodData: BackgroundBarChartRodData(
                               show: true,
                               toY:  100,
                               color: Colors.grey[200]
                             )
                           ),]
                         )).toList()
                       )
                     ),
                    ),
                  ),
                ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Text('Latest Activity',style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    )
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 10),
              child: TextButton(onPressed: (){
                Get.to(const ProfileScreen());
              },
                child: Card(
                    child:
                    Container(
                      color: Colors.white60,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Colors.blueGrey,
                                shape: BoxShape.circle,
                                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdeXW--2gqWg7HxvnohywDOsAMqSQAdHEMzA&s'),

                                )
                            ),
                          ),
                          const SizedBox( width: 20,),
                           const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Drink 30ml water',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text("about 5 mints ago",style: TextStyle(
                                  color: Colors.black45
                              ),),
                            ],
                          ),
                          const SizedBox(width: 30,),
                        ],
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 10),
              child: TextButton(onPressed: (){
              },
                child: Card(
                    child:
                    Container(
                      color: Colors.white60,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Colors.blueGrey,
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage('assets/images/snack.webp'),

                                )
                            ),
                          ),
                          const SizedBox( width: 20,),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Eat Snack (Fit bar)',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text("about 10 mints ago",style: TextStyle(
                                  color: Colors.black45
                              ),),
                            ],
                          ),
                          const SizedBox(width: 30,),
                        ],
                      ),
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
