import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gesture extends StatelessWidget {
   Gesture({
    super.key,required this.index
  });
  String?index;

  @override
  Widget build(BuildContext context) {
    return Container(

        color: Colors.lightGreenAccent,
        child: Center(child: Text("Item "),)
    );
  }
}