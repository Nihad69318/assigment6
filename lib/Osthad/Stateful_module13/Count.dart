import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        toolbarHeight: 100,
        toolbarOpacity: 1,
        backgroundColor: Colors.lightBlueAccent,
        titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(

          children: [
            Text(number.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  number++;
                });
              }, child:Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue),)),
                ElevatedButton(onPressed: (){
                  setState(() {
                    number=0;
                  });
                }, child:Text("Reset")),
              ElevatedButton(onPressed: (){

                setState(() {
                 if (number>0) {
                   number--;

                 }
                });
              }, child:Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.blue),)),

            ],)
          ],
        ),
      ),
    );
  }
}
