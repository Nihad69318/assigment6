import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),

          itemCount: 100,
          itemBuilder: (context, index) {
            return Expanded(child: ListTile(
              leading: Icon(Icons.add),
              title: Text("Enter Your Name?"),
              subtitle: Text("Student Name"),
              textColor: Colors.black,
              tileColor: Colors.white,
              focusColor: Colors.red,
              iconColor: Colors.deepPurple,
            ));
          }
      ),
    );
  }
}
