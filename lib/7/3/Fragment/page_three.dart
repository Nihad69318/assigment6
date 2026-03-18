

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/7/3/Fragment/page_four.dart';

class page_Three extends StatefulWidget{
  @override
  State<page_Three> createState() =>_page_ThreeState();

}
class _page_ThreeState extends State<page_Three>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // final arg=ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    // final name=arg["name"];
    // final age =arg["age"];
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

       Navigator.pop(context);


      }, child:Text(" back_to_Page_Two",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),



      ElevatedButton(onPressed: (){



        Navigator.push(context, MaterialPageRoute(builder: (context)=>page_four()));



      }, child:Text("Page_Three",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),

        ],
      ),
      backgroundColor: Colors.brown,


    );
  }

}