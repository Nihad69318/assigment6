

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/7/3/Fragment/page_Two.dart';

class page_one extends StatefulWidget{
  @override
  State<page_one> createState() =>_page_oneState();

}
class _page_oneState extends State<page_one>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Page_One"),
        toolbarHeight: 60,
        titleSpacing: 100,
        elevation: 0,
        backgroundColor: Colors.amberAccent,

      ),
     body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

     ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>page_Two()));
        }, child: Text("pageScreen_One",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),)),

        ],
      ),
      backgroundColor: Colors.white70,


    );
  }

}