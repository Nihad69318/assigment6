import 'package:flutter/material.dart';
import 'package:new_flutter_project/Osthad/module_16/bd/task_database.dart';
import 'package:new_flutter_project/Osthad/module_16/models/task_Model.dart';
import 'package:path/path.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({super.key});

  @override
  State<TaskHome> createState() => _TaskHomeState();
}
class _TaskHomeState extends State<TaskHome> {

  List<TaskModel> tasks = [];
  TextEditingController taskController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }

  Future<void> refreshTask() async {
    tasks = await TaskDatabase.getTask();
    setState(() {});
  }

  Future<void> addTask() async {
    await TaskDatabase.inserTask(
      TaskModel(id: null, title: taskController.text, isdone: false),
    );
    await refreshTask();
    taskController.clear();
  }

  Future<void> deleteTask( int id) async {
   await TaskDatabase.deleteTask(id);
    await refreshTask();
    taskController.clear();
  }

  Future<void> toggletask( TaskModel task) async {
    await TaskDatabase.updatetask(
      TaskModel(id: task.id, title: task.title, isdone: !task.isdone)
    );
    await refreshTask();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Data Passing",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SafeArea(
                  child: TextFormField(
                    controller: taskController,
                    decoration: InputDecoration(
                      hintText: "Eneter  Your Task",
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              ElevatedButton(
                onPressed: () {
                  addTask();
                  refreshTask();
                  taskController.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: BeveledRectangleBorder(borderRadius: .circular(20)),
                ),
                child: Text("+", style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Card(
                  color: Colors.grey.shade100,
                  shape: RoundedRectangleBorder(borderRadius: .circular(20)),
                  child: ListTile(
                    leading: Checkbox(
                      value: task.isdone ?? false,
                      onChanged: (_) => toggletask(task),
                    ),
                    title: Text(task.title,style: TextStyle(
                      color: task.isdone?Colors.grey:Colors.black,
                      decoration: task.isdone?TextDecoration.lineThrough:null
                    ),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit, color: Colors.orange),
                        ),
                        IconButton(
                          onPressed: ( ) {
                            deleteTask(task.id!);
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
