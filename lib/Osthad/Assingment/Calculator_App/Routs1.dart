import 'package:flutter/material.dart';

import '../../../7/3/Fragment/todo_Wigest/calculator.dart';
import 'calculator_2.dart';
void main(){
  runApp(Routs1());
}
class Routs1 extends StatelessWidget {
  const Routs1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
initialRoute: '/myCalculatorApp',
        routes: {
        '/myCalculatorApp':(context)=>myCalculatorApp()
      }
    );
  }
}
