
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/Osthad/Stateful_module13/Navigator.dart';

class Home extends StatefulWidget {
  final String name;
  final int price;
  Map<String, dynamic>product={
    "name":"Md Nihad Islam",
    "brand":"hello",
    "price":"15000002154964"


  };
  final Color color;
  final VoidCallback onTab;

 Home({
   super.key,
   required this.name,
   required this.price,
   required this.product,
   required this.color,
   required this.onTab,
 });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Flutter App"),
        toolbarHeight: 100,
        toolbarOpacity: 1,
        titleTextStyle: TextStyle(fontSize: 30),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Card(
          color: widget.color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //data Receive kore nilam
              Text( widget.name,  style: TextStyle(fontSize: 40),              ),
              Text( widget.price.toString(),  style: TextStyle(fontSize: 40),              ),
              Text(widget.name, style: TextStyle(fontSize: 40),      ),
              Text(widget.product.toString(), style: TextStyle(fontSize: 40),      ),
              Text(widget.price.toString(), style: TextStyle(fontSize: 40),      ),
              ElevatedButton(onPressed: widget.onTab, child: Text("Submit")),



              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child:Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
