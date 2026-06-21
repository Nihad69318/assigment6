import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'create_page.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(child: ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>create_page()));
            }, child: Text("create Contact",style: TextStyle(color: Colors.black),)))
          ],
        )
      ),
    );
  }
}

