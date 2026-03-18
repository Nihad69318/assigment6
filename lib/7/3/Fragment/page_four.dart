import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/7/3/Fragment/page_Two.dart';

class page_four extends StatefulWidget{
  @override
  State<page_four> createState() =>_page_fourState();

}
class _page_fourState extends State<page_four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("page_Three"),
        toolbarHeight: 60,
        titleSpacing: 100,
        elevation: 0,
        backgroundColor: Colors.indigo,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ElevatedButton(onPressed: (){


            //Navigator.push(context, MaterialPageRoute(builder: (context)=>page_four()));
            Navigator.pop(context);



          }, child:Text("back to Page_Three",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),



          ElevatedButton(onPressed: (){

            Navigator.pushAndRemoveUntil((context), MaterialPageRoute(builder: (context)=>page_Two()), (route)=>false);
            
          }, child:Text("Page_Four",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),))

        ],
      ),
      backgroundColor: Colors.amberAccent,


    );
  }

}