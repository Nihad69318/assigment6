import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/Photo%20Gallery.dart';

void main(){
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner:  false,
  home:  nihadislam(),
);
  }

 }
  class nihadislam extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>nihadislamState();

  }
   class nihadislamState extends State<nihadislam>{
  final List<todoAsk>todoList=[];
  final TextEditingController todoController=TextEditingController();
  void addtodo (){
    if (todoController.text.toString().trim().isEmpty) {
      return ;

    }
   todoList.add(todoAsk(title: todoController.text.toString().trim(), subtitle: ("This is subtitle")));
    todoController.clear();
    setState(() {

    });
  }
  void delete(int index){
    todoList.removeAt(index);
    setState(() {

    });
  }
  void toggle(int index){
    todoList[index].isDone=!todoList[index].isDone!;
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Todo App"),
    toolbarHeight: 100,
    titleSpacing: 100,
    toolbarOpacity: 1,
    backgroundColor: Colors.blueGrey,
  ),
  backgroundColor: Colors.white,
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
                hintText: "Enter Add to your list",
                hintStyle: TextStyle(color: Colors.indigo ),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            )
            ),
          SizedBox(width: 10,),

          ElevatedButton(onPressed: (){
            addtodo();
          },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                )
              ),

              child: Icon(Icons.add)),






        ],
      ),
    ),
    SizedBox(height: 15,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("All ToDos",style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 30,color: Colors.cyanAccent
        ),)
      ],
    ),

    Expanded(


      child:todoList.isEmpty?Center(
        child: Text("No todo Data Found",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red,fontStyle:FontStyle.italic),),
      ):
      ListView.builder(


        itemCount: todoList.length,
          itemBuilder: (context,index){
            return Card(
              color: Colors.white30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Dismissible(key: Key(todoList[index].title.toString()+index.toString()),
                  child:ListTile(
                    title: Text(todoList[index].title.toString(),
                      style: TextStyle(
                        decoration:todoList[index].isDone!? TextDecoration.lineThrough:TextDecoration.none
                      ),
                    ),

                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: (){
                        delete(index); // 👉 এখানে delete call
                      },
                    ),

                    leading: Checkbox(value: todoList[index].isDone, onChanged: (value){
                      toggle(index);

                    }),
                  ),
                onDismissed: (_){
                delete(index);
                },
              )
            
            );


          }
      ),
    )
  ],
  )
);
  }

   }
   class todoAsk{
  String?title;
  String?subtitle;
  bool?isDone;
  todoAsk({required this.title,this.isDone=false,required this.subtitle});
   }