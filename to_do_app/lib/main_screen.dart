import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/initial_controller.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final InitialController initialController = Get.put(InitialController());

    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(color: Color.fromARGB(255, 245, 219, 219)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 20),
                child: Text(
                  "Have a Good Day ,",
                  style: GoogleFonts.urbanist(
                      color: Color.fromARGB(255, 6, 53, 20),
                      fontSize: 43,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Obx(
                  () => Text(
                    "${initialController.name.value} 👋!",
                    style: GoogleFonts.urbanist(
                        color: Color.fromARGB(255, 6, 53, 20),
                        fontSize: 43,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 3, right: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.97,
                  height: 310,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 255, 255, 255), width: 2),
                      gradient: LinearGradient(colors: [Color.fromARGB(31, 118, 201, 218),Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer,
                              color: Color.fromARGB(159, 73, 71, 71),
                              offset: Offset(7, 2))
                        ],
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Categories",
                            style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            childAspectRatio: 0.67,
                            children: [
                              Card(
                                elevation: 15,
                                margin: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                    
                                      Image(image: AssetImage('assets/images/work.jpg'),
                                    height: 90,
                                    width: 200,
                                    fit: BoxFit.cover,
                                      ),
                                    
                                    
                                    Container(
                                      width: 190,
        
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(74, 0, 0, 0),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      
                                    ),
                                    
                                     Padding(
                                       padding: const EdgeInsets.only(
                                        left: 120,
                                        top: 80,
                                       ),
                                       child: Text("Work",style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20
                                                                         ),),
                                     )
                                  ],
                                ),
                              ),
                             
                              Card(
                                elevation: 15,
                                margin: EdgeInsets.all(10),
                                child: Stack(
        
                                  children: [
                                    
                                      Image(image: AssetImage('assets/images/fam.jpg'),
                                    height: 103,
                                    width: 212,
                                    fit: BoxFit.cover,
                                      ),
                                    
                                    
                                    Container(
                                      width: 193,
        
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(74, 0, 0, 0),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      
                                    ),
                                    
                                     Padding(
                                       padding: const EdgeInsets.only(
                                        left: 109,
                                        top: 80,
                                       ),
                                       child: Text("Family",style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20
                                                                         ),),
                                     )
                                  ],
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.all(10),
                                elevation: 10,
                                child: Stack(
                                  children: [
                                    
                                      Image(image: AssetImage('assets/images/leisure.jpg'),
                                    height: 100,
                                    width: 210,
                                    fit: BoxFit.cover,
                                      ),
                                    
                                    
                                    Container(
                                      width: 190,
        
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(74, 0, 0, 0),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      
                                    ),
                                    
                                     Padding(
                                       padding: const EdgeInsets.only(
                                        left: 103,
                                        top: 80,
                                       ),
                                       child: Text("Leisure",style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20
                                                                         ),),
                                     )
                                  ],
                                ),
                              ),
                               Card(
                                margin: EdgeInsets.all(10),
                                elevation: 10,
                                child: Stack(
                                  children: [
                                    
                                      Image(image: AssetImage('assets/images/health.jpg'),
                                    height: 100,
                                    width: 210,
                                    fit: BoxFit.cover,
                                      ),
                                    
                                    
                                    Container(
                                      width: 190,
        
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(74, 0, 0, 0),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      
                                    ),
                                    
                                     Padding(
                                       padding: const EdgeInsets.only(
                                        left: 103,
                                        top: 80,
                                       ),
                                       child: Text("Health",style: GoogleFonts.urbanist(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20
                                                                         ),),
                                     )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 6, right: 6),
                child: Container(
                  height: MediaQuery.of(context).size.height*1,
                      width: MediaQuery.of(context).size.width*0.96,
                      
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color.fromARGB(255, 235, 235, 209),Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                        ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer,
                                color: Color.fromARGB(159, 73, 71, 71),
                                offset: Offset(7, 2))
                          ],
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          )),
                 child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                                Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Your Today's Tasks :",
                            style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.normal),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            width: 400,
                            height: 135,
                              decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer,
                                color: Color.fromARGB(159, 73, 71, 71),
                                offset: Offset(3, 2))
                          ],
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                                child: Text('Movie with Family',style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                                ),),
                              ),
                               Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                                child: Text('Category : Leisure',style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                                ),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      height: 50,
                                      width: 170,
                                      decoration: BoxDecoration(
                                                              boxShadow: [
                                                                BoxShadow(
                                      blurRadius: 7,
                                      spreadRadius: 1,
                                      blurStyle: BlurStyle.outer,
                                      color: Color.fromARGB(159, 73, 71, 71),
                                      offset: Offset(3, 2))
                                                              ],
                                                              border: Border.all(color: Colors.black),
                                                              borderRadius: BorderRadius.all(
                                                                Radius.circular(15),
                                                              )) ,
                                    child:  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 15),
                                    child: Text('Deadline : 6/6/2024 12:13 PM',style: GoogleFonts.quicksand(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700
                                    ),),
                                  ),
                                    ),
                                  ),

                                  // SizedBox(
                                  //   width: 120,
                                  // ),
                                   
                                    Padding(
                        padding: const EdgeInsets.only(left: 120,right: 5),
                        child: IconButton(
                            onPressed: () {
                            
                            },
                            icon: Container(
                              
                              decoration: BoxDecoration(
                                
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.black,
                                  width: 2
                                  
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                                      
                              ),
                              child: Icon(
                                Icons.delete_outline_outlined,
                                color: const Color.fromARGB(255, 208, 16, 16),
                                size: 30,
                                
                                
                              ),
                            )),
                      ),
                                ],
                              )
                            ],
                          ),
                          ),
                        ),
                        
                  ],
                 ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
