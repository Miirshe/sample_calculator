import 'dart:io';
import 'dart:math';

void main(){

  print('Enter Number : ? ');

  String value_1 = stdin.readLineSync().toString();

  print('Enter On Of These Operation + || - || * || / || ** : ? ');

  String op_type = stdin.readLineSync().toString();

  print('Enter Number : ? ');

  String value_2 = stdin.readLineSync().toString();

  num num1 = num.parse(value_1); 

  num num2 = num.parse(value_2);

  operations(num1,op_type,num2);

}

void operations(var num1 , String op_type , var num2 ){

  var result;

  if(op_type == '+'){

    result = num1+num2;

  }else if(op_type == '-'){

    var total;

    if( num2 > num1){

      var temp = num2;

      num2 = num1;

      num1 = temp;

      total = num1 - num2;

    }else{

      total = num1-num2;

    }

    result = total;

  }
  else if(op_type == '*'){

    result = num1*num2;

  }
  else if(op_type == '/'){

    result = num1/num2;

  }else if(op_type == '**'){

    result = pow(num1, num2);

  }else{

    print('operation does not exist');

  }

  print('The Result is : ${result}');

}