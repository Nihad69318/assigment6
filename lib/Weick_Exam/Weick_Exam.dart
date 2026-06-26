import 'package:flutter/material.dart';

import '../My_Ideia_Project/Frist_Idea/Nots.dart';

class weickExam extends StatefulWidget {
  const weickExam({super.key});

  @override
  State<weickExam> createState() => weickExamState();
}

class weickExamState extends State<weickExam> {
  final TextEditingController nameController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  List<String>name=[];
  List<String>phon=[];
  void update0(){
    if(formKey.currentState!.validate()){
      setState(() {
        name.add(nameController.text);
        phon.add(phoneController.text);
      });
      phoneController.clear();
      nameController.clear();
    }
  }

  void pushmathod(){
if(formKey.currentState!.validate()){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Nots(
      name: name,
      phon: phon,
    )));
  }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.blueAccent.shade100,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: Text("Enter Your Name",style: TextStyle(fontSize: 18,color: Colors.black),)),
              TextFormField(
                keyboardType: .name,
                controller: nameController,
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "please Enter Your Name";
                  }
                  else if(value.length==50){
                    return "";
                  }
                },
                decoration: InputDecoration(
                  hint: Text(nameController.text),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 12,),
              Align(alignment: Alignment.topLeft,
                  child: Text("Enter Your Phone Number",style: TextStyle(fontSize: 18,color: Colors.black87),)),
              TextFormField(
                keyboardType:.phone,
                controller: phoneController,
                validator:  (value){
                  if(value==null||value.isEmpty){
                    return "Please Enter Your Number";
                  }else if(value.length!=11){
                    return "please Enter Your 11 Digit Number";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hint: Text(phoneController.text),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15),
                    )
                ),
              ),
              SizedBox(height: 12,),
              ElevatedButton(onPressed: (){
                update0();
                pushmathod();
              },
                  style:  ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  child: Text("Add")),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount:name.length,
              //       itemBuilder: (context,index){
              //     return Card(
              //       child: ListTile(
              //       trailing: Icon(Icons.phone,color: Colors.blueAccent,),
              //         leading: Icon(Icons.person,color: Colors.brown.shade400,),
              //         title: Text(name[index]),
              //         titleTextStyle: TextStyle(color: Colors.red),
              //         subtitle: Text(number[index]),
              //       )
              //     );
              //   }),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
