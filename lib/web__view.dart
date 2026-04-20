// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'GestureDetector.dart';
//
// class WebView extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
// return Row(
//   children: [
//     SizedBox(
//       child: Container(
//         width: 250,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black87, Colors.blueGrey],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(20),
//               width: double.infinity,
//               child: Text("Admin Panel" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.cyanAccent),),
//
//             ),
//             ListTile(
//               leading: Icon(Icons.dashboard,size: 25,color: Colors.lightGreenAccent,),
//               title: Text("Dashboard",style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.normal,fontSize: 25),),
//             ),       ListTile(
//               leading: Icon(Icons.settings,size: 25,color: Colors.lightGreenAccent,),
//               title: Text("settings",style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.normal,fontSize: 25),),
//             ),       ListTile(
//               leading: Icon(Icons.home,size: 25,color: Colors.lightGreenAccent,),
//               title: Text("Home",style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.normal,fontSize: 25),),
//             ),       ListTile(
//               leading: Icon(Icons.shop,size: 25,color: Colors.lightGreenAccent,),
//               title: Text("Shop",style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.normal,fontSize: 25),),
//             ),
//           ],
//
//         ),
//       ),
//     ),
//     Expanded(
//       child: Column(
//         children: [
//           Container(
//             child: Text("Web View",style: TextStyle(fontSize: 30,color: Colors.red),),
//
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Md Nihad Islam",style: TextStyle(color: Colors.cyanAccent,fontSize: 30),),
//             subtitle: Text("Flutter developer",style: TextStyle(color: Colors.cyan,fontSize: 30),),
//
//           ),Expanded(
//             child: GridView.builder(
//                 gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount:4,
//                   crossAxisSpacing: 5,
//                   mainAxisSpacing: 5,
//                   childAspectRatio: 2,
//                 ),
//                 itemCount: 100,
//                 padding: EdgeInsets.all(20),
//                 physics: BouncingScrollPhysics(),
//                 itemBuilder: (context,index){
//                   return Gesture(index: 'index+1',);
//                 }
//             ),
//           ),
//             Container(
//             child: Center(
//           child: Text("@69318Company",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),
//           ),
//             )
//         ],
//       ),
//     ),
//   ],
// );
//   }
//
// }