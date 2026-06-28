// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';
//
// class Calculator2 extends StatefulWidget {
//   const Calculator2({super.key});
//
//   @override
//   State<Calculator2> createState() => _Calculator2State();
// }
//
// class _Calculator2State extends State<Calculator2> {
//   String Input = "";
//   String result = "0";
//   final buttonList = [
//     "C",
//     "DEL",
//     "%",
//     "÷",
//     "7",
//     "8",
//     "9",
//     "x",
//     "4",
//     "5",
//     "6",
//     "-",
//     "1",
//     "2",
//     "3",
//     "+",
//     "0",
//     ".",
//     "ans",
//     "=",
//   ];
//
//   void onbutton(String value) {
//     setState(() {
//       if (value == "C") {
//         Input = "";
//         result = "0";
//       } else if (value == "DEL") {
//         if (Input.isNotEmpty) {
//           Input = Input.substring(0, Input.length - 1);
//         }
//       } else if (value == "=") {
//         onbuttonresult();
//       } else if (value == "ans") {
//         Input = result;
//       } else {
//         Input += value;
//       }
//     });
//   }
//
//   void onbuttonresult() {
//     try {
//       String expression = Input.replaceAll("x", "*").replaceAll("÷", "/");
//       Parser nihad = Parser();
//       Expression exp = nihad.parse(expression);
//       ContextModel contextModel = ContextModel();
//       double eval = exp.evaluate(EvaluationType.REAL, ContextModel());
//       setState(() {
//         result = eval.toString();
//       });
//     } catch (e) {
//       result = "Error";
//     }
//   }
//
//
//
// Color ButtonColor(String text) {
// if (text == "C") return Colors.redAccent;
// if (text == "DEL") return Colors.orangeAccent;
// if (text == "=") return Colors.green;
// if (["÷", "x", "-", "+", "%", "ans"].contains(text)) {
// return Colors.blueGrey.shade700;
// }
// return Colors.blueGrey.shade400;
// }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Calculator App",
//           style: TextStyle(
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         centerTitle: true,
//         toolbarHeight: 100,
//         elevation: 0,
//         backgroundColor: Colors.indigo,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 3,
//             child: Container(
//               color: Colors.grey,
//               height: 200,
//               child: Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Align(
//                   alignment: Alignment.topRight,
//
//                   child: Column(
//                     children: [
//                       Text(
//                         "Input",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w300,
//                           fontSize: 28,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 18),
//                       Text(
//                         "result",
//                         style: TextStyle(
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Divider(color: Colors.redAccent),
//           GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 4,
//               childAspectRatio: 1,
//               crossAxisSpacing: 5,
//               mainAxisSpacing: 5,
//             ),
//             itemBuilder: (context, index) {},
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// Widget onbuttonClick(String, text) {
//   return GestureDetector(
//     onTap: () {},
//     child: Container(
//       margin: EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         color: ButtonColor(text),
//         borderRadius: .circular(15),
//       ),
//       child: Center(child: Text(text)),
//     ),
//   );
// }
