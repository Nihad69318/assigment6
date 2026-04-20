import 'package:flutter/material.dart';

class CarCrash extends StatelessWidget {
  const CarCrash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white60,
      child:Center(
        child: Icon(Icons.car_crash,fontWeight: FontWeight.bold,color: Colors.blue,size: 20,),
      ),
    );
  }
}
