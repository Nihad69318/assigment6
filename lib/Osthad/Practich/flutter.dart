import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flutter extends StatefulWidget {
  const Flutter({super.key});

  @override
  State<Flutter> createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Developer"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 100,
      ),

    );
  }
}
