import 'package:flutter/material.dart';
import 'package:new_flutter_project/Osthad/module_16/ui/task_home.dart';
void main(){
  runApp( routds());
}
class routds extends StatelessWidget {
  const routds({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      initialRoute:'/TaskHome',
    routes: {
        '/TaskHome':(context)=>TaskHome(),
    },
    );
  }
}
