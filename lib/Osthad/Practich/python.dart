import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Python extends StatefulWidget {
  const Python({super.key});

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Python Developer"),
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
