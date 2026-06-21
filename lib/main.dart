import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Osthad/Assingment/Counter_App/HomeScreen.dart';
import 'Osthad/Modul_14/pakge_class3.dart';
import 'Osthad/Modul_14/todo_App.dart';

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
          initialRoute: '/todoApp',

          routes: {

            '/Homescreen': (context) => const Homescreen(),
            '/PakgeClass3': (context) => const PakgeClass3(),
            '/todoApp': (context) => const todoApp(),


          },
        );
      },
    );
  }
}