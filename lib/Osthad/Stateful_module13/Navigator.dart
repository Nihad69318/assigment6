import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/7/3/Fragment/HomeScreen.dart';

import 'Nevigator_pages/about.dart';
import 'Nevigator_pages/home.dart';

class navigator extends StatefulWidget {

  const navigator({super.key,});

  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Flutter"),
        toolbarHeight: 100,
        toolbarOpacity: 1,
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 40,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [


            
            
            
            
            
            
            ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:
                 (context)=> Home(name: 'Md Nihad Islam', price: 1500, product: {
               "name":"Laptop",
               "brand":"Nihad",
               "price":"639721",
             }, color: Colors.orange, onTab: () {print("submit") ; },)));
            }, child: Text("Home",style: TextStyle(fontSize: 30,color: CupertinoColors.black),)),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Saved Successfully"))
              );

                
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>about()));
            }, child: Text("About",style: TextStyle(fontSize: 30,color: CupertinoColors.black))),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "/about2 ");
            }, child: Text("about2",style: TextStyle(fontSize: 30,color: CupertinoColors.black))),

          ],
        ),
      ),

    );
  }
}
