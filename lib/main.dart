import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/Osthad/Navigation_UI.dart';
import 'package:new_flutter_project/Osthad/Stateful_module13/Nevigator_pages/about.dart';
import 'package:new_flutter_project/Osthad/Stateful_module13/Nevigator_pages/home.dart';


import '7/3/Wigest/mobile__view.dart';
import 'Model/Practicsh.dart';
import 'Osthad/Animated.dart';
import 'Osthad/Modul_14/todo_App.dart';
import 'Osthad/Stateful_module13/Count.dart';
import 'Osthad/Stateful_module13/Navigator.dart';

void main() {
   runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
   debugShowCheckedModeBanner:  false,






  //
  // routes: {
  //    "/about":(context)=>about(),
  //  "class2":(context)=>class2()
  // },
  // initialRoute: "class2",







  home:Practicsh(),








);
  }

}
class MyHomepage extends StatelessWidget{

  TextEditingController phoneController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("My Flutter App"),
    toolbarHeight: 100,
    titleTextStyle: TextStyle(fontStyle: FontStyle.italic,fontSize: 30,fontWeight: FontWeight.bold),
    toolbarOpacity: 1,
    elevation: 0,
    backgroundColor: Colors.tealAccent,
    centerTitle: true,

  ),
  backgroundColor: Colors.orange,
  body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Form(
      key:  formkey,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Loging Screen,,,,,,,,,,,,,!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.black),),
          SizedBox(height: 20,),
          TextFormField(
            controller: phoneController,
            decoration: InputDecoration(
              hintText: "Enter Your Phone number",
              hintStyle: TextStyle(fontStyle: FontStyle.italic),
              suffixIcon: Icon(Icons.check_circle,color: Colors.lightBlueAccent,),
              prefixIcon: Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
              )

            ),
            validator:  (value){
              if (value==null||value.isEmpty) {
                return "please enter Your Phone Number";

              }  else if (value.length!=11) {
                return "please enter your currnt phone number";

              }  else{
                return null;
              }
            },
          ),
          SizedBox(height: 20,),
          TextFormField(
            controller:  passwordController,
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Your password",
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                suffixIcon: Icon(Icons.remove_red_eye,color: Colors.lightBlueAccent,),
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                )

            ),
            validator: (value){
              if (value==null||value.isEmpty) {
                return "enter Your password";

              }  else if (value.length<6) {
                return "password must be getter than 6 charcter ";

              }  else{
                return null;
              }
            },
          ),
          SizedBox(height: 20,),
          SizedBox(height: 40,
            width: double.infinity,
            child: ElevatedButton(onPressed: (){
              formkey.currentState!.validate();
            },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.lightBlue),
                child: Text("Submit")),
          )

        ],
      ),
    ),
  ),
);
  }

}