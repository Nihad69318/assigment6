
import 'package:flutter/material.dart';

class DetealisScreen extends StatefulWidget {
  const DetealisScreen({super.key, required this.counter});
  final int counter;

  @override
  State<DetealisScreen> createState() => _DetealisScreenState();
}

class _DetealisScreenState extends State<DetealisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 3,

        title: Text("Details ",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Received Counter value",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 12,),
            Text("${widget.counter}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back_Screen"))
          ],
        ),
      ),

    );
  }
}
