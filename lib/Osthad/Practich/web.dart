
import 'package:new_flutter_project/Osthad/Practich/flutter.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'as p;

class Taskdatabase{
  static Database?_bd;
  static Future<Database>getBD()async{
    if(_bd!=null)return _bd!;
 _bd= await openDatabase(p.join(await getDatabasesPath(),'task.bd'),
   onCreate: (_bd,version){
   return _bd.execute(
     'CREATE TABLE task(id INTEGER PRIMARY KEY AUTOINCREMENT title TEXT isdone INTEGER)'
   );

   },
   version: 2
 );
 
return _bd!;
  }
  static Future<void>inert(model,nihad)async{
    final bd=await getBD();
    await bd.insert('task', nihad.toMap,conflictAlgorithm: .replace);
  } 
  static Future<List<model>>get()async{
    final bd=await getBD();
   final List<Map<String,dynamic>>map=await bd.query('task');
   return List.generate(map.length, (i)=> model.formMap(map[i]));
  }
}