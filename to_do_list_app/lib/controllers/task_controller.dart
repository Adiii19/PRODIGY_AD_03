import 'dart:convert';

//import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:to_do_list_app/models/model.dart';

class TaskController extends GetxController {
  RxList tasklist = [].obs;
  RxBool AddButton = false.obs;
  RxString taskname = ''.obs;
  RxString taskdesc = ''.obs;

  Rx<DateTime> date = DateTime.now().obs;
  RxInt? hour = 2.obs;
  RxInt? min = 4.obs;
  RxInt? hourcheck = 4.obs;
  RxString? id=''.obs;
  Rx<Category?> category = Category.Work.obs;

  void task_adder() async {
    if (AddButton.value == true) {
      final url = Uri.https(
          'to-do-list-29552-default-rtdb.firebaseio.com', '/Tasklist.json');
      final response = await http.post(url,
          headers: {'Content-type': 'application/json'},
          body: json.encode({
            'taskname': taskname.value,
            'taskdesc': taskdesc.value,
            'date': date.value.toIso8601String(),
            'hour': hour?.value,
            'min': min?.value,
            'hourcheck': hourcheck?.value,
            'category': category.value.toString().split('.').last
          }));

      final data = json.decode(response.body) as Map<String, dynamic>;
      final String id = data['name'];

      tasklist.add(
        Task(
            taskname: data['taskname'],
            description: data['taskdesc'],
            date: data['date'],
            hour: data['hour'],
            min: data['min'],
            id: id,
            hourcheck: data['hourcheck'],
            category: data['category']),
      );
      print(tasklist);
    }
  }
}
