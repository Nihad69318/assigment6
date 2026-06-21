import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class todoApp extends StatefulWidget {
  const todoApp({super.key});

  @override
  State<todoApp> createState() => _PracticshState();
}

class _PracticshState extends State<todoApp> {
  List<String> todoaske=[];
  TextEditingController todoController=TextEditingController();
  void addtodoaske(){
    if (todoController.text.isNotEmpty) {
      setState(() {
        todoaske.add(todoController.text);
        todoController.clear();
      });
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Emti Is Not Allow")));
    }
  }
  void deletetodoaske(int index){
    setState(() {
      todoaske.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo_App"),
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoController,
                      decoration: InputDecoration(
                          hintText: "Enter Your todo List",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreenAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightGreenAccent)
                          ),
                          filled: true
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){
                    addtodoaske();
                  },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                      child: Text("+",style: TextStyle(fontSize: 40,color: Colors.white),))
                ],
              ),
              if (todoaske.isNotEmpty)
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Your All Todo List",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),
                  ),
                ),
              SizedBox(height: 16,),
              Expanded(
                child:todoaske.isEmpty?Center(child: Text("No Data Found",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),):
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: todoaske.length,
                    itemBuilder: (context,index){
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        color: Colors.grey,
                        child: ListTile(
                          title: Text(todoaske[index]),
                          trailing: IconButton(onPressed: (){deletetodoaske(index);}, icon: Icon(Icons.delete,color: Colors.red,)),
                        ),
                      );
                    }),
              )
            ],
          ),
        )
    );
  }
}
