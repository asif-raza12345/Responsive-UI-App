import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Dashboard/HomeScreen.dart';


class FinishedScreen extends StatefulWidget {
  const FinishedScreen({super.key});

  @override
  State<FinishedScreen> createState() => _FinishedScreenState();
}

class _FinishedScreenState extends State<FinishedScreen> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double ScreenWeidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
             Row(
                children: [
                  Container(
                    height:Screenheight * 0.50,
                    width: ScreenWeidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/finished.png'),
                      )
                    ),
                  ),
                ],
              ),
            const Text('Congratulations,You Have ',style: TextStyle(color:
            Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
            const Text('Finished your Workout',style: TextStyle(color:
            Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
            const SizedBox(height: 20,),
            Padding(
              padding: const  EdgeInsets.all(30.0),
              child: Container(
                height: 50,
                width: ScreenWeidth * 0.75,
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(50)
                ),
                child: TextButton(onPressed: (){
                  Get.to(const homeScreen());
                },
                  child: const Text("Back To Home",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
