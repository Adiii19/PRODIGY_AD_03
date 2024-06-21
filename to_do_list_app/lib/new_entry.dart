import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/controllers/task_controller.dart';
import 'package:to_do_list_app/models/model.dart';

class NewEntry extends StatelessWidget{


   DateTime? selectedDate;
  TimeOfDay? selectedTime;
  var enteredcategory=Category.Family;

  final _taskNameController = TextEditingController();
  final _taskDescriptionController = TextEditingController();

  final TaskController taskController=Get.put(TaskController());

  


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 224, 113, 105)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: TextField(
                  controller: _taskNameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Task Name",
                      style:GoogleFonts.urbanist(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 193, 128, 124)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: TextField(
                  
                  controller: _taskDescriptionController,
                  maxLines: 6,
                  minLines: 1,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text(
                      "Task Description",
                      style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 194, 16, 76)),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.50),
                  child: Column(
                    children: [
                      Text(
                        "Deadline:",
                        style: GoogleFonts.lato(color: const Color.fromARGB(255, 188, 33, 22), fontSize: 18),
                      ),
                      SizedBox(width: 5),
                      Row(
                        children: [
                          IconButton(
                            onPressed:(){},// presentDatePicker,
                            icon: Icon(Icons.calendar_month_outlined, color: Colors.blueAccent),
                          ),
                          SizedBox(width: 5),
                          Text(
                             'Select Date' , 
                            style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w200),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed:(){},// timePicker,
                            icon: Icon(Icons.watch_later_outlined, color: Colors.blueAccent),
                          ),
                          Text(
                            selectedTime == null ? 'Select Time' : '${selectedTime!.hour}:${selectedTime!.minute}',
                            style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      DropdownButtonFormField(value: enteredcategory,items: [
                          for(final category in Category.values)
                          DropdownMenuItem(
                            value: category,
                            child: Text(category.name,style: TextStyle(
                              color: Colors.blueGrey
                            ),),
                          )


                      ] , onChanged: (value){
                        enteredcategory=value!;
                        taskController.category.value=value;
                      })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Obx(
              ()=> TextButton(
                onPressed: (){
                  taskController.AddButton.value=true;
                  taskController.taskname.value=_taskNameController.text;
                  taskController.taskdesc.value=_taskDescriptionController.text;
                  taskController.date.value=selectedDate!;
                  taskController.hour?.value=selectedTime!.hour;
                  taskController.min?.value=selectedTime!.minute;
                  taskController.hourcheck?.value=selectedTime!.hour;
                  taskController.category.value=enteredcategory;
                  taskController.task_adder();
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 225, 79),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 7,
                                  spreadRadius: 1,
                                  blurStyle: BlurStyle.normal,
                                  color: Color.fromARGB(159, 73, 71, 71),
                                  offset: Offset(7, 2))
                            ],
                            borderRadius: BorderRadius.circular(2)),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  child: Text(
                     "Add Task" ,
                    style:  GoogleFonts.urbanist(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}