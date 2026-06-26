import 'package:flutter/material.dart';

class Nots extends StatefulWidget {
 Nots({super.key  ,required this.name,required this.phon});
  final List<String>name;
  final List<String>phon;

  @override
  State<Nots> createState() => _NotsState();
}

class _NotsState extends State<Nots> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount:widget.name.length,
                itemBuilder: (context,index){
                  return Card(
                      child: ListTile(
                        trailing: Icon(Icons.phone,color: Colors.blueAccent,),
                        leading: Icon(Icons.person,color: Colors.brown.shade400,),
                        title: Text(widget.name[index]),
                        titleTextStyle: TextStyle(color: Colors.red),
                        subtitle: Text(widget.phon[index]),
                      )
                  );
                }),
          )
        ],
      ),
    );
  }
}

