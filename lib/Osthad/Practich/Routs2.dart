import 'package:flutter/material.dart';

import 'flutter.dart' show Flutter;
void main(){
  runApp(Routs2());
}
 class Routs2 extends StatelessWidget {
   const Routs2({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: '/ Flutter',
       routes: {

       },
     );
   }
 }
