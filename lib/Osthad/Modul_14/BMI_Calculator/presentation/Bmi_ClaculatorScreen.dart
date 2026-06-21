// import 'package:flutter/material.dart';
// import 'package:new_flutter_project/Osthad/Modul_14/BMI_Calculator/BMI_Claculator_Wigest/input_Card.dart';
// import 'package:new_flutter_project/Osthad/Modul_14/BMI_Calculator/BMI_Claculator_Wigest/result_Card.dart';
// import 'package:new_flutter_project/Osthad/Modul_14/BMI_Calculator/core/colors/App_color.dart';
//
// import '../BMI_Claculator_Wigest/bmi_reference_table.dart';
//
// class BmiClaculatorscreen extends StatefulWidget {
//   const BmiClaculatorscreen({super.key});
//
//   @override
//   State<BmiClaculatorscreen> createState() => _BmiClaculatorscreenState();
// }
//
// class _BmiClaculatorscreenState extends State<BmiClaculatorscreen> {
//   final _heightController=TextEditingController();
//   final _weightController=TextEditingController();
//   final formKey=GlobalKey<FormState>();
//   double?_bmi;
//   String?_category='';
//   Color _categoryColor=AppColors.normal;
//   void calculator(){
//     final heightCm=double.parse(_heightController.text);
//     final weightKg=double.parse(_weightController.text);
//     final heightM=heightCm/100;
//     final bmi=weightKg/(heightM * heightM);
//     final (category,color)=_classify(bmi);
//     setState(() {
//       _bmi=bmi;
//       _category=category;
//       _categoryColor=color;
//     });
//   }
//   (String,Color) _classify (double bmi){
//     if(bmi<18.5)return("Underweght",AppColors.underweight);
//     else if (bmi<25)return ("Normal",AppColors.normal);
//     else if (bmi<30)return ("Overweight",AppColors.overweight);
//     else return('Obese',AppColors.obese);
//   }
//   void reset(){
//     _heightController.clear();
//     _weightController.clear();
//     setState(() {
//       _bmi=null;
//       _category='';
//       _categoryColor=AppColors.normal;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BMI Claculator"),
//         backgroundColor: AppColors.appBarBackground,
//         foregroundColor: AppColors.appBarForeground,
//       ),
//
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Form(
//               key:formKey,
//               child: Column(
//                 spacing: 8,
//                 children: [
//                   inputcard(
//                       heightController: _heightController,
//                       weightController: _weightController
//                   ),
//                   SizedBox(
//                     width: double.infinity,
//                     height: 50,
//                     child: ElevatedButton(onPressed: (){
//             if (formKey.currentState!.validate()){
//               calculator();
//             }
//                     },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: AppColors.primaryButton,
//                           foregroundColor:Colors.white.withValues(alpha: 0.7) ,
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
//
//                         ) ,
//                         child: Text("Calculate BMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
//                   ),
//                   if(_bmi!=null)...[
//                     ResultCard(bmi: _bmi!,
//                         category: _category!,
//                         categoryColor: _categoryColor
//                     ),
//                     TextButton(onPressed: reset,
//                         style: TextButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white),
//                         child: Text("Reset"))
//                   ],
//
//                   bmi_reference_table(),
//
//                 ],
//               )
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
//
//
