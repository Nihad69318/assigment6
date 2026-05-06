import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class web extends StatefulWidget {
 web({super.key, required this.product });
  // final String name;
  // final int price;
  Map<String,dynamic>product={
    "Name":"Nihad Islam",
    "price":693187,
    "brand":"Flutter"
  };
  @override
  State<web> createState() => _webState();
}


class _webState extends State<web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Web"),
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            // Text(widget.price.toString(),style: TextStyle(fontSize: 40),),
         Text(widget.product.toString())
            
          ],
        ),
      )
      
    );
  }
}
