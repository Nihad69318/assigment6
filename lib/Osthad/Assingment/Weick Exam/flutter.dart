//
// import 'package:flutter/material.dart';
// import 'package:new_flutter_project/Osthad/Practich/web.dart';
//
// class flutter extends StatefulWidget {
//   const flutter({super.key});
//
//   @override
//   State<flutter> createState() => _flutterState();
// }
// class _flutterState extends State<flutter> {
//   final TextEditingController nameController=TextEditingController();
//   final TextEditingController phoneController=TextEditingController();
//   final formKey=GlobalKey<FormState>();
//   List<String>name=[];
//   List<String>phone=[];
//   void button(){
// if(formKey.currentState!.validate()){
//   setState(() {
//     name.add(nameController.text);
//     phone.add(phoneController.text);
//   });
//   phoneController.clear();
//   nameController.clear();
//   Navigator.push(context, MaterialPageRoute(builder: (context)=>web(
//     name:name,
//     phone:phone,
//   )));
// }
//
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Contact List",style: TextStyle(fontSize: 30,color: Colors.black87),),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         toolbarHeight: 100,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           child: Form(
//             key: formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Align(alignment: Alignment.topLeft,
//                     child: Text("Enter Your name",style: TextStyle(fontSize: 18,color: Colors.black87),)),
//                 SizedBox(height: 12,),
//                 TextFormField(
//                   controller: nameController,
//                   validator:  (value){
//                     if(value==null||value.isEmpty) {
//                       return "please enter your phone number";
//                     }
//                   },
//                   decoration: InputDecoration(
//                     hint: Text("Md Nihad Islam",style: TextStyle(fontSize: 18,color: Colors.grey),),
//                     filled: true,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                       borderSide: BorderSide(color: Colors.blue)
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.blue)
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.blue)
//                     )
//                   ),
//                 ),
//                 SizedBox(height: 12,),
//                 Align(alignment: Alignment.topLeft,
//                     child: Text("Enter Your Mobile ",style: TextStyle(fontSize: 18,color: Colors.black87),)),
//                 SizedBox(height: 12,),
//                 TextFormField(
//                   controller: phoneController,
//                   validator: (value){
//                     if(value==null||value.isEmpty){
//                       return"please enter your number";
//                     }else if(value.length!=11){
//                       return "Please 11digit number";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                       hintText: "01842454305",
//                       hintStyle: TextStyle(fontSize: 18,color: Colors.grey),
//                       filled: true,
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(color: Colors.blue)
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.blue)
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.blue)
//                       )
//                   ),
//                 ),
//                 SizedBox(height: 12,),
//                 ElevatedButton(onPressed: (){
//                   button();
//                 },
//                     style:ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))) ,
//                     child: Text("Add",style: TextStyle(fontSize: 18),))
//               ],
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
