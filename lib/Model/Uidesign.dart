import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uidesign extends StatefulWidget {
  const Uidesign({super.key});

  @override
  State<Uidesign> createState() => _UidesignState();
}

class _UidesignState extends State<Uidesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsetsGeometry.all(16),
      child: Column(

        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back,size: 30,),
                Icon(Icons.search,size: 30,),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Food.png"),
                Column(
                  
                  children: [
                    Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 100),
                    child: Column(
                      children: [
                        Text("Customize Your Burger to Your Tastes. Ultimate Experience")
                      ],
                    ),)
                    
               
                  ],
                ),
              ],
            ),
          )
        ],

      ),)

    );
  }
}
