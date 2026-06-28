import 'package:flutter/material.dart';

class CostomDailog extends StatefulWidget {
  const CostomDailog({super.key});

  @override
  State<CostomDailog> createState() => _CostomDailogState();
}

class _CostomDailogState extends State<CostomDailog> {

  void showAlertDialog(){
    showDialog(
      barrierDismissible: false,
        context: context, builder: (context)=>AlertDialog(
      icon: Icon(Icons.info),
      title: Text("This Is Title"),
      content: Text("Are You Sure"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("cansel")),
        ElevatedButton(onPressed: (){}, child: Text("Submit"))
      ],
    ));
  }
  void showSimpoleDialog(){
    showDialog(
      barrierDismissible: false,
        context: context, builder: (context)=>SimpleDialog(
      title: Text("This Is Title"),
      children: [
        SimpleDialogOption(
          child: Text("Option-1"),
        ),
        SimpleDialogOption(
          child: TextField(

            decoration: InputDecoration(
              hintText: "How Fany",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),

            ),

          )
        ),
      ],

    ));
  }
void showBottomSeet(){
    showModalBottomSheet(context: context, builder: (context)=>Container(
child: Column(
  children: [
    Text("Chose Oftion"),
    ListTile(title: Text("option 1"),),
    ListTile(title: Text("option 2"),),
    ListTile(title: Text("option 3"),),
    ListTile(title: Text("option 4"),),
    ListTile(title: Text("option 5"),),
  ],
),
    ));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Costom Alert Dialog"),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child: Text("Alert_Dialog"))  ,
            ElevatedButton(onPressed: (){
              showSimpoleDialog();
            }, child: Text("SimpleDialog"))  ,  ElevatedButton(onPressed: (){
              showBottomSeet();
            }, child: Text("showBottomSeet"))
          ],
        ),
      ),
    );
  }
}
