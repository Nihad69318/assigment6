// import 'package:flutter/material.dart';
//
// import 'Contact.dart';
// import 'Nots.dart';
// import 'create_page.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//    int CurrentIndex=0;
//
//
// class _HomeState extends State<Home> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Homepage",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
//         toolbarHeight: 100,
//         centerTitle: true,
//         backgroundColor: Colors.green,
//       ),
//     body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CurrentIndex==0?Center(child: Text("Hi Nihad!",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.black),),)
//             :CurrentIndex==1?Contact(
//           firstName: nameController.text,
//           lastName: lastController.text,
//           gmail: gmailController.text,
//           phone: phoneController.text,
//         ):Nots()
//
//
//       ],
//     ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: CurrentIndex,
//           onTap: (int index){
//           setState(() {
//             CurrentIndex=index;
//           });
//           },
//           items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
//         BottomNavigationBarItem(icon: Icon(Icons.contacts),label: "Contact"),
//         BottomNavigationBarItem(icon: Icon(Icons.note),label: "Note"),
//       ]),
//     );
//   }
// }
