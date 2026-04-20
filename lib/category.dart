import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 500,
      color: Colors.lightGreen,
      child: Icon(Icons.category,fontWeight: FontWeight.bold,size: 30,color: Colors.lightBlue,),
    );
  }
}
