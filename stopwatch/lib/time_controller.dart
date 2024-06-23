import 'dart:async';

import 'package:get/get.dart';

class TimeController extends GetxController{

RxInt seconds=0.obs;
RxInt hour =0.obs;
RxInt min=0.obs;
Timer? _timer;

void secondcontroller(){


 _timer=Timer.periodic(Duration(seconds: 1),(timer) {

  seconds.value++;
  if(seconds.value==60)
  {
    seconds.value=0;
   min.value++;

   if(min.value==60)
   {
    min.value=0;
    hour.value++;
   }
    
  }

  
  
},);

}

  void reset() {
   
    seconds.value=0;
    hour.value=0;
    min.value=0;
     pause();
  }

  void pause(){
    _timer?.cancel();
   
  }


}