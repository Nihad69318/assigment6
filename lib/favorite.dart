import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
      child: Icon(Icons.favorite,color: Colors.red,fontWeight: FontWeight.bold,size: 20,),


      ),
    );
  }
}
