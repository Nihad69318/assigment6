import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/Photo%20Gallery.dart';


class SettingScreen extends StatelessWidget{
  MySnacKBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: message)
    );
  }
  MyAlertDailog(context){
    return showDialog(
      context: context,
      builder: (BuildContext contex){
        return Expanded(
            child:AlertDialog(
              title: Text("Alert"),
              content: Text("Do You want to Delete"),
              actions: [
                ElevatedButton(onPressed: (){
                  MySnackBar(context, "Delete Success");
                  Navigator.of(context).pop();
                }, child: Text("Yes")),
                ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),

              ],
            )
        );
      }
    );



}
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         ElevatedButton(onPressed: (){}, child: Text("Click Me?"))
       ],
     ),
   );
  }

}