import 'package:flutter/material.dart';

class web extends StatefulWidget {
  const web({super.key, required this.name, required this.phone});
  final List< String> name;
  final List <String> phone;
  @override
  State<web> createState() => _webState();
}
class _webState extends State<web> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Contact List",style: TextStyle(fontSize: 30,color: Colors.black),),
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.name.length,
                itemBuilder: (context,index){
              return Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(20),),
                child: ListTile(
                leading: Icon(Icons.person,color: Colors.brown.shade600,size: 40,),
                title: Text(widget.name[index],style: TextStyle(fontSize: 25,color: Colors.black),),
                subtitle: Text(widget.phone[index],style: TextStyle(fontSize: 18,color: Colors.indigo),),
                  trailing: Icon(Icons.phone,color: Colors.blue.shade500,size: 35,),

              ),);
            }),
          )
        ],
      ),
    );
  }
}
