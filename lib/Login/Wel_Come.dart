import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelCome extends StatefulWidget {
  const WelCome({super.key});
  @override
  State<WelCome> createState() => _WelComeState();
}
class _WelComeState extends State<WelCome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xffEB4622),
        toolbarHeight: 190,
        elevation: 0,
        title: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Nagot_logo.png"),
                    SizedBox(width: 20,),
                    Text("নগদ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.white,),),
                  ],
                ),
                Positioned(
                    right: 40,
                bottom: 7,
                    child:  Text("ডাক বিভাগের ডিজিটাল লেনদেন",style: TextStyle(fontSize: 12,color: Colors.black87),
                    )
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Tap for Balance",
                      hintStyle:TextStyle(color: Color(0xffEB4622,),fontWeight: FontWeight.bold,fontSize: 18),
                      prefixIcon: Icon(Icons.lock_open),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
            )
          ],
        ),

      ),
      backgroundColor: Color(0xffF5F5F5),
      body: Center(
        child: Icon(Icons.add),
      ),
    );
  }
}
