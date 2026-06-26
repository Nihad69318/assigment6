import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({super.key});

  @override
  State<StudentCard> createState() => _StState();
}

class _StState extends State<StudentCard> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 7),() {
      Navigator.pushReplacementNamed(context, '/Basicpage');
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
        child: Center(child: Card(child: SizedBox(height: .infinity, width:.infinity,))),
        baseColor: Colors.grey.shade400,
        highlightColor: Colors.grey.shade100,
      ),
    );
  }
}
