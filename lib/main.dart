import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_project/practich_Flutter/Practicsh.dart';

import '7/3/Fragment/todo_Wigest/calculator.dart';
import 'My_Ideia_Project/Frist_Idea/Home.dart';
import 'Osthad/Animated.dart';
import 'Osthad/Assingment/Counter_App/HomeScreen.dart';
import 'Osthad/Modul_14/Costom_Dailog.dart';
import 'Osthad/Modul_14/pakge_class3.dart';
import 'Osthad/Modul_14/todo_App.dart';
import 'Osthad/Practich/flutter.dart';
import 'Osthad/Assingment/Weick Exam/Weick_Exam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          initialRoute: '/MyCalculatorAppr',

          routes: {
            // '/Homescreen': (context) => const Homescreen(),
            // '/PakgeClass3': (context) => const PakgeClass3(),
            // '/todoApp': (context) => const todoApp(),
            // '/Practicsh': (context) => const Practicsh(),
            // '/CostomDailog': (context) => const CostomDailog(),
            // '/Home': (context) => const Home(),
            '/weickExam': (context) => const weickExam(),
          //  '/flutter': (context) => const flutter(),
            // '/MyCalculatorApp': (context) =>  MyCalculatorApp(),

          },
        );
      },
    );
  }
}
