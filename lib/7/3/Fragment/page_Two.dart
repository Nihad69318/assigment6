

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/7/3/Fragment/page_three.dart';

class page_Two extends StatefulWidget{
  @override
  State<page_Two> createState() =>_page_twoState();

}
class _page_twoState extends State<page_Two>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        title: Text("Page_Two"),
        toolbarHeight: 60,
        titleSpacing: 100,
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){

            //Navigator.push(context, MaterialPageRoute(builder: (context)=>page_Two()));

            Navigator.pushNamed(context, "/page_One",arguments: {
              'name':'Nihad',
              'age':30
            });


           // Navigator.of(context).pop()



          }, child: Text("back main dart",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),)),
          ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>page_Three()));
          }, child: Text("page_Two",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),))



        ],
      ),
      backgroundColor: Colors.teal,



    );
  }

}