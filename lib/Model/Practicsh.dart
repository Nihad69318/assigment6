import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Osthad/Practich/flutter.dart';
import '../Osthad/Practich/web.dart';
import '../Osthad/Stateful_module13/Nevigator_pages/about.dart';
import '../Osthad/Stateful_module13/Nevigator_pages/home.dart';

class Practicsh extends StatefulWidget {
  const Practicsh({super.key});

  @override
  State<Practicsh> createState() => _PracticshState();
}

class _PracticshState extends State<Practicsh> {
  int CurrentActiveStep=0;
   List<Step>StepList=[
    Step(
        title: Text("Flutter Developer"), content:Text("I am Flutter Developer")),
    Step(
  title: Text("Web Developer"), content:Text("I am  web Developer")),
    Step(
    title: Text("Python Developer"), content:Text("I am Python Developer")),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                    child: Image.asset("assets/images/Cox'Bazar.jpg"))
              ],
            ),
          )
        ],
      )
    );
  }
}
