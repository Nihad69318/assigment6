import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            
            width: 100,
            height: 100,
            padding: EdgeInsets.fromLTRB(12, 22, 0, 0),
            child: Icon(Icons.arrow_back,size: 30,),
          ),
          Container(

            width: 100,
            height: 100,
            padding: EdgeInsets.fromLTRB(12, 22, 0, 0),
            child: Icon(Icons.search,size: 30,),
          ),

        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 0,),
          Container(
            padding: EdgeInsets.fromLTRB(30, 37, 0, 0),
            width: 370,
            height: 370,
            child: Image.asset("assets/images/image_10.png"),
          )

        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Column(

            children: [
              // Align(
              //   alignment: Alignment.topLeft,
              //   child:Text("Hamburger Veggie Burger",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 25),) ,
              // )

              Container(
                width: 362,
                height: 62,
                padding: EdgeInsets.symmetric(horizontal: 30),


                child: Text("Hamburger Veggie Burger",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 25),) ,
              )

            ],
          )
        ],
      ),
      SizedBox(height: 10,),

         Row(


              children: [
                SizedBox(width: 25,
                height: 5,),


                 Icon(Icons.star,color: Colors.amber,),
                SizedBox(width: 10,),
                Text("4.8"),
                SizedBox(width: 5,),
                Text("-",style: TextStyle(fontSize: 30),),
                SizedBox(width: 5,),
                Text("14mins")

              ],
            ),

    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

    Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text("Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. "
      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
    )
      ],
    ),
      Row(
        children: [
         Row(
            children: [

              Container(


                width: 150,
                height: 220,
                child: Image.asset("assets/images/Group 29.png"),
              ),

              Container(
                width: 250,
                height: 220,
                child: Image.asset("assets/images/Group 28.png"),
              )
            ],
          )
        ],
      ),



        ],


  )

);
  }
  
}
