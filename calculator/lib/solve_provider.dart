

import 'package:calculator/calc_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Solvenotifier extends StateNotifier<String>{

Solvenotifier(this.ref):super("");

final Ref ref;


 solve(){

double ?result;
final String opr=ref.read(calcprovider);
RegExp regExp=RegExp(r'(\d+(\.\d+)?)\s*([+\-X/])\s*(\d+(\.\d+)?)');
Match ?match=regExp.firstMatch(opr);

if (match!=null) {
  double num1 = double.parse(match.group(1)!); // Group 1: The first number, potentially with a decimal part
  String operator = match.group(3)!; // Group 3: The operator
  double num2 = double.parse(match.group(4)!);



switch(operator)
  {
     case '+':
     result=num1+num2;
     break;

      case '-':
     result=num1-num2;
     break;

      case '/':
     result=num1/num2;
     break;


     case 'X':
    result = num1 * num2; 
     break;

     default:
     state='Error';
     return;

  }

   state=result.toString();
}
 
}

void clear(){

state='';

}


}

final solveprovider=StateNotifierProvider<Solvenotifier,String>((ref) {
  return Solvenotifier(ref);
},

  

);