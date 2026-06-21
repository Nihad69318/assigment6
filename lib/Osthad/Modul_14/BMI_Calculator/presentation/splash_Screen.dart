// import 'package:flutter/material.dart';
// import 'package:new_flutter_project/Osthad/Modul_14/BMI_Calculator/core/colors/App_color.dart';
// import 'package:new_flutter_project/Osthad/Modul_14/BMI_Calculator/presentation/Bmi_ClaculatorScreen.dart';
//
// class spashScreen extends StatefulWidget {
//   const spashScreen({super.key});
//
//   @override
//   State<spashScreen> createState() => _spashScreenState();
// }
//
// class _spashScreenState extends State<spashScreen>with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double>_fadeAnimation;
//   late final Animation<double>_scaleAnimation;
//   void initState(){
//     super.initState();
//     _controller=AnimationController(vsync: this ,duration:Duration(milliseconds: 1200) );
//     _fadeAnimation=CurvedAnimation(parent: _controller, curve:Curves.easeIn);
//     _scaleAnimation=Tween<double>(begin: 0.8,end:1.0 ).animate(CurvedAnimation(parent: _controller, curve:Curves.easeInOutBack ));
//     _controller.forward();
//     Future.delayed(Duration(seconds: 3),_navigationToHome);
//   }
//   void _navigationToHome(){
//     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BmiClaculatorscreen()));
//   }
//
//   void dispose(){
//     super.dispose();
//     _controller.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//     backgroundColor: AppColors.primaryColors,
//       body: Center(
//         child: FadeTransition(
//           opacity: _fadeAnimation,
//           child: ScaleTransition(
//             scale: _scaleAnimation,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height:100 ,width: 100,
//                     decoration:BoxDecoration(
//                       color: Colors.white.withValues(alpha: 0.15),
//                       shape: BoxShape.circle
//                     ) ,
//                     child: Icon(Icons.monitor_weight_outlined,size: 50,color: Colors.white,)),
//                 Text("Bmi Calculator",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
//                 SizedBox(height: 12,),
//                 Text("Know Your Body,Know Yourself",style: TextStyle(
//                     color: Colors.white.withValues(alpha: .5),
//                     fontSize: 14,fontWeight: FontWeight.normal,letterSpacing: .5),),
//                 SizedBox(height: 30,),
//                 CircularProgressIndicator(color: Colors.white.withValues(alpha: .2),)
//               ],
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
