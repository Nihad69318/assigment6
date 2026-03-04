//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowMaterialGrid: false,
//       title: "Tasbih Counter",
//       home: TasbihScreen(),
//     );
//   }
//
// }
// class TasbihScreen extends StatefulWidget{
//   const TasbihScreen({super.key});
//
//   @override
//   State<TasbihScreen> createState()=>_TasbihScreenState();
//
// }
// class _TasbihScreenState extends State<TasbihScreen>{
//   int counter=0;
//   bool isdark=false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Container(
//             width: 600,
//             height: 650,
//             padding: EdgeInsets.all(25),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//                 gradient: LinearGradient(
//                     colors:[
//                       Colors.deepPurple,
//                       Colors.deepPurple,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight
//                 )
//             ),
//             child:Column(
//               mainAxisAlignment:MainAxisAlignment.center,
//               children: [
//                 Text("لله أكبرا",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 30,
//                       color: Colors.white
//                   ),
//
//                 ),
//                 const SizedBox(height: 20,),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.white54,
//                   ),
//                   child: Text("0:00:40",
//                     style:TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//
//                   ),
//
//                 ),
//                 const SizedBox(height: 30,),
//                 const Text(
//                   "Tasbih Counter",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 10,),
//                 // Text(
//                 //     count.toString().padLeft(3, '0')
//                 // )
//                 Text(
//                   count.toString().padLeft(3, '0'),
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 40,
//                   ),
//                 ),
//
//
//
//               ],
//             )
//         ),
//       ),
//     );
//   }
//
// }
//
//
//
//
//
//
