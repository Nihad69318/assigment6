
import 'package:flutter/material.dart';

class LocalShipping extends StatelessWidget {
  const LocalShipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      color: Colors.blueAccent,
      child: Center(
        child: Icon(Icons.local_activity,color: Colors.red,fontWeight: FontWeight.bold,size: 20,),
      ),
    );
  }
}
