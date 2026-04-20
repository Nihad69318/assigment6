// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'GestureDetector.dart';
//
// class  MobileView extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return Column(
//      children: [
//        Container(
//          padding: EdgeInsets.all(20),
//          child: Center(child: Text("Mobile_View",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),),
//        ),
//        ListTile(
//          leading: CircleAvatar(),
//          title: Text("Md Nihad Islam",style: TextStyle(color: Colors.cyanAccent,fontSize: 30),),
//          subtitle: Text("Flutter developer",style: TextStyle(color: Colors.cyan,fontSize: 30),),
//
//        ),Expanded(
//          child: GridView.builder(
//              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount:2,
//              crossAxisSpacing: 5,
//              mainAxisSpacing: 5,
//              childAspectRatio: 2,
//              ),
//              itemCount: 100,
//              padding: EdgeInsets.all(20),
//              physics: BouncingScrollPhysics(),
//              itemBuilder: (context,index){
//                return Gesture(index: 'index+1',);
//              }
//          ),
//        ),
//        Container(
//          child: Center(
//            child: Text("@69318Company",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),
//          ),
//        )
//      ],
//    );
//   }
//
// }
//
//
//
