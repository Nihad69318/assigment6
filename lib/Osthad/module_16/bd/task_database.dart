import 'package:new_flutter_project/Osthad/module_16/models/task_Model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class TaskDatabase {
  static Database? _bd;
  static Future<Database> getBD() async {
    if (_bd != null) return _bd!;
    _bd = await openDatabase(
      p.join(await getDatabasesPath(), 'task.bd'),
      onCreate: (_bd, version) {
        return _bd.execute(
          'CREATE TABLE tasks(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,isdone INTEGER)',
        );
      },
      version: 2,
    );
    return _bd!;
  }
  static Future<void>inserTask(TaskModel taskModel)async{
    final  bd= await getBD( );
    await bd.insert('tasks', taskModel.toMap(),conflictAlgorithm:ConflictAlgorithm.replace );
  }
  static Future<List<TaskModel>>getTask()async{
    final  bd= await getBD( );
  final List<Map<String,dynamic>>maps=await bd.query('tasks');
  return List.generate(maps.length, (i)=>TaskModel.formMap(maps[i]));


  }
  static Future<void>deleteTask(int id)async{
    final  bd= await getBD( );
    bd.delete('tasks',where:'id = ?',whereArgs: [id] );
  }

  static Future<void>updatetask(TaskModel task)async{
    final  bd= await getBD( );
    bd.update('tasks', task.toMap(),where:'id=?',whereArgs: [task.id] );
  }






}
