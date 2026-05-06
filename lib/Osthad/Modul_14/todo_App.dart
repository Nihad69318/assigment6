import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/7/3/Fragment/todo_Wigest/todo_screen.dart';

class todo_App extends StatefulWidget {
  const todo_App({super.key});

  @override
  State<todo_App> createState() => _todo_AppState();
}



class _todo_AppState extends State<todo_App>{
  TextEditingController todoController=TextEditingController();
  List todoask=[];

  void addtodoask() {
    if (todoController.text.isNotEmpty) {
      setState(() {
        todoask.add(todoController.text);
        todoController.clear();
      });
      
    } else{
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Emti is not Allow")));
    }

  }
  void deletetodoask(int index){
   setState(() {
     todoask.removeAt(index);
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helllo Nihad"),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: todoController,
                    decoration: InputDecoration(
                      hintText: "Add Your todoo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent)
                      )

                    ),
                  ),
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){
                  addtodoask();
                },
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    child: Text("+",style: TextStyle(fontSize: 40),))
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount:todoask.length,
                  physics: BouncingScrollPhysics(),

                  itemBuilder: (context,index){
                return Card(
                  color: CupertinoColors.inactiveGray,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  child: ListTile(
                    title: Text(todoask[index]),
                    trailing: IconButton(onPressed: (){deletetodoask(index);}, icon: Icon(Icons.delete,color: Colors.red,)),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
