// import 'package:flutter/material.dart';
//
// import 'Contact.dart';
//
// class create_page extends StatefulWidget {
//   const create_page({super.key});
//
//   @override
//   State<create_page> createState() => _create_pageState();
// }
// TextEditingController nameController=TextEditingController();
// TextEditingController lastController=TextEditingController();
// TextEditingController gmailController=TextEditingController();
// TextEditingController phoneController=TextEditingController();
// class _create_pageState extends State<create_page> {
//   final formKey=GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: SafeArea(
//             child: Form(
//               key: formKey,
//               child: Column(
//                 children: [
//                   Align(alignment: Alignment.topLeft,
//                     child: Text("Enter Your First Name",style: TextStyle(color: Colors.black),),),
//                   TextFormField(
//                       keyboardType: TextInputType.text,
//                       controller: nameController,
//                       decoration: InputDecoration(
//                           hintText: "",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo
//                           )),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo))
//                       ),
//                     ),
//                   Align(alignment: Alignment.topLeft,
//                     child: Text("Enter Your Last Name",style: TextStyle(color: Colors.black),),),
//                   TextFormField(
//                       keyboardType: TextInputType.text,
//                       controller: lastController,
//                       decoration: InputDecoration(
//                           hintText: "",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo
//                           )),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo))
//                       ),
//                     ),
//                     Align(alignment: Alignment.topLeft,
//                     child: Text("Enter Your gmail",style: TextStyle(color: Colors.black),),),
//                   TextFormField(
//                       controller: gmailController,
//                       decoration: InputDecoration(
//                           hintText: "",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo
//                           )),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo))
//                       ),
//                     ),
//                   Align(alignment: Alignment.topLeft,
//                     child: Text("Enter Your Phone Number",style: TextStyle(color: Colors.black),),),
//                   TextFormField(
//                       keyboardType: TextInputType.number,
//                       controller: phoneController,
//                       decoration: InputDecoration(
//                           hintText: "",
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo
//                           )),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.indigo))
//                       ),
//                     validator: (value){
//                         if(value==null||value.isNotEmpty){
//                           return "please Enter Your phone number";
//
//                         }   else if(value.length!=11){
//                           return "please 11 digit chackter";
//                         }else{
//                           return null;
//                         }
//                     },
//                     ),
//                 SizedBox(height: 15,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 50,
//                       width: 100,
//                       child: ElevatedButton(onPressed: (){
//                         if(formKey.currentState!.validate()){
//                           context newContact=contevxt(
//                             firstName: nameController.text,
//                             lastName: lastController.text,
//                             gmail: gmailController.text,
//                             phone: phoneController.text,
//
//                           );
//                         };
//
//
//                       },
//                           style:ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))) ,
//                           child: Text("Save",style: TextStyle(fontSize: 18),)),
//                     ),
//                     SizedBox(width: 12,),
//                     SizedBox(height: 50,
//                       width: 100,
//                       child: ElevatedButton(onPressed: (){
//                         Navigator.pop(context);
//                       },
//                           style:ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))) ,
//                           child: Text("cancel",style: TextStyle(fontSize: 17),)),
//                     )
//                   ],
//                 )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
