import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogingScreen extends StatefulWidget {
  const LogingScreen({super.key});

  @override
  State<LogingScreen> createState() => _LogingScreenState();
}

class _LogingScreenState extends State<LogingScreen> {
  TextEditingController PhoneControler=TextEditingController();
  TextEditingController passwordControler=TextEditingController();
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Loging Screen"),
         centerTitle:  true,
        toolbarHeight: 100,
        toolbarOpacity: 1,
        titleSpacing:0,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Here......!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              TextFormField(
                controller:PhoneControler,
          
                  decoration: InputDecoration(
                    hintText: "Enter Your Phone Number",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red,
                          width: 4
                        )
          
                    )
                  ),
                validator:  (value){
                  if(value==null||value.isEmpty){
                    return "please enter your phone number";
                  } else if (value.length!=11) {
                    return "please enter Your Current Phone Number";
                    
                  }  else{
                    return null;
                  }
                },
                ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwordControler,
                obscureText: true,
          
                decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.green,),
          
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green,
          
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 4
                        )
          
                    )
                ),
                validator:  (value){
                  if(value==null||value.isEmpty){
                    return "please enter your Password";
                  } else if (value.length<6) {
                    return "Password must be getter than 6  Charekter";

                  }  else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: ElevatedButton(onPressed: (){
                  if (formkey.currentState!.validate()) {
                    print( "SuccesFul");
                    
                  }  
                  


                }, style:  ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.lightBlue
                ),
                    child: Text("Submit")),
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
