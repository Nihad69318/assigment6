// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//
// //    debugShowCheckedModeBanner: false,
//       home: TasbihScreen(),
//     );
//   }
// }
//
// class TasbihScreen extends StatefulWidget {
//   const TasbihScreen({super.key});
//
//   @override
//   State<TasbihScreen> createState() => _TasbihScreenState();
// }
// class _TasbihScreenState extends State<TasbihScreen> {
//   int count = 46;
//   bool isDark = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffE5E5E5),
//       body: Center(
//         child: Container(
//           width: 350,
//           height: 650,
//           padding: const EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(25),
//             gradient: const LinearGradient(
//               colors: [
//                 Color(0xff8E6BC9),
//                 Color(0xff7A5BBE),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               /// Arabic Text
//               const Text(
//                 "لله أكبرا",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//
//               const SizedBox(height: 10),
//
//               /// Timer
//               Container(
//                 padding:
//                 const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: Colors.white24,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: const Text(
//                   "0:00:40",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//
//               const SizedBox(height: 30),
//
//               const Text(
//                 "Tasbih Counter",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                 ),
//               ),
//
//               const SizedBox(height: 10),
//
//               /// Counter Number
//               Text(
//                 count.toString().padLeft(3, '0'),
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//
//               const SizedBox(height: 30),
//
//               /// Toggle Button (Red Box Part)
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                    isDark = !isDark;
//                     count++;
//                   });
//                 },
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   width: 150,
//                   height: 55,
//                   padding: const EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: isDark
//                         ? Colors.black87
//                         : Colors.black54,
//                   ),
//                   child: Align(
//                     alignment: isDark
//                         ? Alignment.centerRight
//                         : Alignment.centerLeft,
//                     child: Container(
//                       width: 45,
//                       height: 45,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 40),
//
//               /// Bottom Buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   buildButton(Icons.refresh),
//                   buildStopButton(),
//                   buildButton(Icons.pause),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildButton(IconData icon) {
//     return Container(
//       width: 60,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Icon(icon, color: Colors.purple),
//     );
//   }
//
//   Widget buildStopButton() {
//     return Container(
//       width: 80,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: const Center(
//         child: Text(
//           "Stop",
//           style: TextStyle(
//             color: Colors.purple,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }