import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   home: MyHomeScreen(),
 );
  }

}
class MyHomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomeScreenState();

}
 class MyHomeScreenState extends State<MyHomeScreen>{
  double nihad=0.6;
  int Count=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
                    child: Icon(Icons.arrow_back),
                  ),
                  Container(
                    padding:EdgeInsets.fromLTRB(0, 40,30, 0),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
          SizedBox(height: 5,),
          Image.asset("assets/images/image_10.png"),
          SizedBox(height: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Hamburger Veggie Burger",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 5,),
         Row(

            children: [
              Padding(padding: EdgeInsetsGeometry.fromLTRB(20, 0, 0, 0)),

              Icon(Icons.star,size: 30,color: Colors.amber,),
              Text("4.8 - 14 mins",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
            ],
          ),
          SizedBox(height: 5,),
          Column(
            
            children: [
              Container(
                padding: EdgeInsetsGeometry.fromLTRB(25, 0, 0, 0),
                child:    Text("Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. "
                  ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              )
           
           
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text("Spicy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Slider(
                      value: nihad,
                      onChanged: (value){
                        setState(() {
                          nihad=value;
                        });
                      }
                  ),
                  Row(
                    children: [
                      Text("Mid",style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold),),
                      SizedBox(width:90,),
                      Text("Hot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),)
                    ],
                  )
                ],
              ),
              SizedBox(width: 50,),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Portion",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Row(

                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        Count--;
                                      });
                                    },
                                    icon: Icon(Icons.remove,color: Colors.white,size: 10,)
                                ),
                              ),

                              Center(
                                child: Text(
                                  "$Count",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              SizedBox(width: 10,),


                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        Count++;
                                      });
                                    }, 
                                    icon: Icon(Icons.add,color: Colors.white,size: 10,)
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Padding(padding: EdgeInsetsGeometry.fromLTRB(30, 0, 0, 0)),
                  Container(
                    width: 80,
                     height: 80,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("\$9.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                    )
                  ),
                  SizedBox(width: 90,),
                  Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Center(
                      child: Text("ORDER NOW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    )
                  ),
                ],
              )
            ],
          )


    );

  }

 }