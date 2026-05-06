import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about2 extends StatefulWidget {
  const about2({super.key});

  @override
  State<about2> createState() => _about2State();
}

class _about2State extends State<about2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About 2"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
