import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stopwatch/time_controller.dart';

class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final TimeController samay_controller = Get.put(TimeController());
  bool Start = false;
  Color Textcol = Colors.brown;
  Color bgcol = Color.fromARGB(255, 243, 234, 234);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'Stopwatch',
          style: GoogleFonts.raleway(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Textcol,
          ),
        ),
        backgroundColor: bgcol,
        toolbarHeight: 55,
      ),
      body: Container(
          decoration: BoxDecoration(
            color: bgcol,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 160),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 298,
                      
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(blurRadius: 30
                          ,spreadRadius: 0.1,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(
                            30, 5),
                          color: Color.fromARGB(94, 66, 65, 65)
                          )
                        ]
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Obx(() =>  Text(samay_controller.hour.toString(),style: GoogleFonts.raleway(color: Textcol,fontSize: 80),)),
                          Text(':',style: GoogleFonts.raleway(color: Textcol,fontSize: 80),
                          ),
                          Obx(
                            () =>  Text(samay_controller.min.toString(),style: GoogleFonts.raleway(color: Textcol,fontSize: 80),
                            ),
                          ),
                          Text(':',style: GoogleFonts.raleway(color: Textcol,fontSize: 80),
                          ),
                                                    Obx(() =>  Text(samay_controller.seconds.toString(),style: GoogleFonts.raleway(color: Textcol,fontSize: 80),)),

                          
                        ],),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                      
                            Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7,
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.normal,
                                    color: Color.fromARGB(159, 73, 71, 71),
                                    offset: Offset(7,2)
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: TextButton(onPressed:()=> samay_controller.reset(), child:  Text(
                                              "End",
                                              style: GoogleFonts.raleway(
                                                color: Textcol,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20
                                              ),
                                            ),),
                            ),
                          ),
                      
                            Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7,
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.normal,
                                    color: Color.fromARGB(159, 73, 71, 71),
                                    offset: Offset(7,2)
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: TextButton(onPressed:()=> samay_controller.pause(), child:  Text(
                                              "Pause",
                                              style: GoogleFonts.raleway(
                                                color: Textcol,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20
                                              ),
                                            ),),
                            ),
                          ),
                      
                          
                        ],
                      ),
                    )

                    ,SizedBox(
                      height: 5,
                    ),
                    Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7,
                                    spreadRadius: 1,
                                    blurStyle: BlurStyle.normal,
                                    color: Color.fromARGB(159, 73, 71, 71),
                                    offset: Offset(7,2)
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: TextButton(onPressed:()=> samay_controller.secondcontroller(), child:  Text(
                                              "Start",
                                              style: GoogleFonts.raleway(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20
                                              ),
                                            ),),
                            ),
                          ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
