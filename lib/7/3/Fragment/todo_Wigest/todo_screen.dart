
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NihadScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>NihadScreenState();


}
class NihadScreenState extends State<NihadScreen>{
  final List<todoAsk>todoList=[];
  final TextEditingController todoController=TextEditingController();
  void Addtodo(){
    if(todoController.text.toString().trim().isEmpty){
      return;
    }
    todoList.add(todoAsk(title: todoController.text.toString().trim(), subtitle:("This is ")));
    todoController.clear();
    setState(() {

    });

  }
  void DeleteTodo(int index){
    todoList.removeAt(index);
    setState(() {

    });

  }
  void Toggletodo(int index){
    todoList[index].IsDone=!todoList[index].IsDone!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        toolbarOpacity: 1,
        titleSpacing: 100,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),

      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: todoController,
                    decoration: InputDecoration(
                        hintText: "Add todo",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                ElevatedButton(onPressed: (){
                  Addtodo();

                }, child:Text("Add todo",style: TextStyle(fontWeight: FontWeight.bold),))
              ],
            ),
          ),
          Expanded(
            child:todoList.isEmpty?
            Center(child: Text("No Todo Data Found",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),):
            ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Dismissible(key: Key(todoList[index].title.toString()+index.toString()),
                      child: ListTile(
                        title: Text(todoList[index].title.toString(),
                          style: TextStyle(
                              decoration:todoList[index].IsDone!? TextDecoration.lineThrough:TextDecoration.none
                          ),
                        ),
                        leading: Checkbox(value: todoList[index].IsDone!, onChanged: (value){
                          Toggletodo(index);

                        }),
                      ),
                      onDismissed: (_)=>{
                        DeleteTodo(index)

                      },
                    ),
                  );
                }
            ),
          )
        ],
      ) ,
    );
  }
}
class todoAsk{
  String?title;
  String?subtitle;
  bool?IsDone;
  todoAsk({required this.title,this.IsDone=false,required this.subtitle});}
