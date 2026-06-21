// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../core/colors/App_color.dart';
//
// class bmi_reference_table extends StatelessWidget {
//
//   const bmi_reference_table({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     const rows=[
//       ('<18.5','UnderWeight',AppColors.underweight),
//       ('18.5-24.5','Normal',AppColors.normal),
//       ('25-29.5','OverWeight',AppColors.overweight),
//       ('>=30','Obese',AppColors.obese),
//     ];
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Column(
//         children: [
//           Padding(padding: EdgeInsets.all(16),
//           child: Text("BMI Reference Table",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
//          const SizedBox(height: 12,),
//           ...rows.map(
//                   (row)=>Padding(padding: EdgeInsets.symmetric(vertical: 4),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 12,height: 12,
//                           decoration: BoxDecoration(
//                             color: row.$3,
//                             shape: BoxShape.circle,
//                           ),
//                         ),
//                         const SizedBox(width: 10,),
//                         SizedBox(width: 100,
//                         child: Text(row.$1,style: TextStyle(fontWeight:FontWeight.w500 ),),),
//                         Text(row.$2,style: TextStyle(color: Colors.black54),)
//                       ],
//                     ),
//                   )
//
//           )
//         ],
//       ),
//
//
//     );
//   }
// }
