
import 'package:flutter/material.dart';

import 'About.dart';
import 'detealis_Screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
int number=0;
int Currentindex=0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight:100,
        title: Text("MyHomepage",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black87),),
        elevation: 3,
        
      ),
      body:Currentindex==0?
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 12,),
            Text("${number}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 35,color: Colors.black),),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    number++;
                  });
                }, child: Text("Increment",style: TextStyle(fontSize: 18),)),
                SizedBox(width: 12,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetealisScreen(counter:number)));
                }, child: Text("Open Details",style: TextStyle(fontSize: 18),))
              ],
            )
          ],
        ),
      ):About(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
          currentIndex:Currentindex,
          onTap: (int index){
            setState(() {
              Currentindex=index;
            });

          },
          items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.contacts),label: "Contact")
      ]),
    );
  }
}
