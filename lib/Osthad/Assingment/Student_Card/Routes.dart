import 'package:flutter/material.dart';

import 'Basicpage.dart';
import 'Student_Card.dart';

void main(){
  runApp(Routes());
}

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'/',
      routes: {
        '/Basicpage': (context) =>  Basicpage(),
        '/': (context) =>  StudentCard(),
      },
    );
  }
}
