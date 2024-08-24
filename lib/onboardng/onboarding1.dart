import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'onboarding3.dart';

class FisrtScreen extends StatefulWidget {
  const FisrtScreen({super.key});

  @override
  State<FisrtScreen> createState() => _FisrtScreenState();
}

class _FisrtScreenState extends State<FisrtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              height: Get.height,
              width: Get.width,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(child: Container(
                      color: Colors.blue,
                      width: Get.width,
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Fitness",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          )),
                          Text("X",style:TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ))
                        ],
                      )
                  )),
                  Expanded(child: Container(
                    color: Colors.blue,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const  EdgeInsets.all(30.0),
                          child: Container(
                            height: 50,
                            width: Get.width* 0.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(onPressed: (){
                              Get.to(const burnScreen());
                            },
                              child: const Text("Get Started",style: TextStyle(
                                color: Colors.black,
                                fontWeight:FontWeight.bold
                              ),),),
                          ),
                        )
                      ],
                    ),
                  )),

                ],
              )
          ),
        )
    );
  }
}
