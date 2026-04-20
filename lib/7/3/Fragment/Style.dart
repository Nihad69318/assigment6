import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle HeadLine(BuildContext context){
  var width = MediaQuery.of(context).size.width;

  if(width < 700){
    return TextStyle(
      color: Colors.black,
      fontSize: 30,
      backgroundColor: Colors.pink,
    );
  }else{
    return TextStyle(
      color: Colors.blue,
      fontSize: 100,
      backgroundColor: Colors.green,
    );
  }
}