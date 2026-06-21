import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:new_flutter_project/Osthad/Modul_14/BMI_Calculator/core/colors/App_color.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.bmi, required this.category, required this.categoryColor,
});
  final double bmi;
  final String category;
  final Color categoryColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,

      child: Card(

        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Your BMI is",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey),),
              SizedBox(height: 8,),
              Text(bmi.toStringAsFixed(1),style: TextStyle(fontSize: 62,fontWeight: FontWeight.w500),),
              SizedBox(height: 8,),
              Container(
                padding: .symmetric(horizontal: 16,vertical: 6),
                  decoration: BoxDecoration(
                    color: categoryColor.withValues(alpha: .15),
                    borderRadius: .circular(20)),
                  child: Text(category,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)),
              SizedBox(height: 12,),
              _BmiGauge(bmi: bmi)
            ],
          ),
        ),

      ),
    );
  }
}
class _BmiGauge extends StatelessWidget {
  const _BmiGauge({super.key, required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return AnimatedRadialGauge(duration: Duration(milliseconds: 800),

      curve: Curves.elasticIn,
      radius: 100,
      value:bmi.clamp(10, 40),
      axis: GaugeAxis(min: 10,max:40,sweepDegrees: 100,style:GaugeAxisStyle(
        thickness: 16,
        background: Colors.white,
        zoneSpacing: 3,
        blendColors: false,

      ) ,
        pointer:  GaugePointer.needle(width: 20, height: 70, color: Colors.black45),
        progressBar:  GaugeProgressBar.rounded(color: Colors.transparent),
        zones: [
          GaugeZone(from: 10, to: 18.5,color: AppColors.underweight,cornerRadius: .zero),
          GaugeZone(from: 18.5, to: 24.9,color: AppColors.normal,cornerRadius: .zero),
          GaugeZone(from: 25, to: 30,color: AppColors.overweight,cornerRadius: .zero),
          GaugeZone(from: 30, to: 40,color: AppColors.obese,cornerRadius: .zero),
        ],

      ),

    );
  }
}

