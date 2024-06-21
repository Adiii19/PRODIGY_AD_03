import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/controllers/task_controller.dart';
import 'package:to_do_list_app/models/model.dart';

class Taskitem extends StatelessWidget{

 Taskitem({required this.task,super.key});

   final Task? task;
   final TaskController task_controller=Get.put(TaskController());

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
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
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 15),
                                child: Obx(
                                  ()=>Text(
                                    '${task_controller.taskname}',
                                    style: GoogleFonts.quicksand(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 15),
                                child: Obx(
                                  ()=> Text(
                                    '${task_controller.category}',
                                    style: GoogleFonts.quicksand(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      height: 50,
                                      width: 170,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 7,
                                                spreadRadius: 1,
                                                blurStyle: BlurStyle.outer,
                                                color: Color.fromARGB(
                                                    159, 73, 71, 71),
                                                offset: Offset(3, 2))
                                          ],
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          )),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 15),
                                        child: Obx(
                                          ()=> Text(
                                            'Deadline : ${task_controller.date}',
                                            style: GoogleFonts.quicksand(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, right: 5),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                style: BorderStyle.solid,
                                                color: Colors.black,
                                                width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Icon(
                                          Icons.delete_outline_outlined,
                                          color: const Color.fromARGB(
                                              255, 208, 16, 16),
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
  }


}