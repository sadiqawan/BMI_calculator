import 'package:flutter/material.dart';
import 'dart:math';
class CalculationMain {
  CalculationMain({ required this.height,  required this.weight,  });

  final int height ;
  final int weight ;
  double bmi = 0;


  String calculateBMI ()
   {
    double bmi = weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1);

  }
  String getResult (){

    if(bmi >= 25){
      return 'Overweight';
    }if(bmi >= 18.5){
      return 'Normal';
    }else{
      return 'Underweught';
    }

  }
  String bmiresult(){

    if(bmi >= 25){
      return 'You have Higher then a normal value. Please try to ExE';
    }if(bmi >= 18.5){
      return 'You have a Normal. Good job!';
    }else{
      return 'You have a lower than Normal body weight. Try to eat! ';
    }


  }

}