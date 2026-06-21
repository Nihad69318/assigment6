import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class Practicsh extends StatefulWidget {
  const Practicsh({super.key});



  @override
  State<Practicsh> createState() => _PracticshState();
}
final formKey=GlobalKey<FormState>();

class _PracticshState extends State<Practicsh> {

 late final int Isloging=0;
   void AlertDalog(){
   showDialog(context: context, builder: (context)=>AlertDialog(
     key: formKey,
     icon: Icon(Icons.info,size: 60,),
     iconColor: Colors.red,
     title: Text("This Is Title"),
     titlePadding: EdgeInsets.all(0).w,
     content: Column(mainAxisSize: MainAxisSize.min,
       children: [
      TextField(
        decoration: InputDecoration(
          hintText: "     ",
          suffixIcon: TextButton.icon(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successful")));
            Navigator.pop(context);
          }, label: Text("Send")),
          filled: true,
          fillColor: Colors.grey,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      )
     ],),


   ));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
             setState(() {
              bool Isloging=true;
             });
             Future.delayed(Duration(seconds: 30));
             setState(() {
               bool Isloging=false;
             });
              AlertDalog();

            }, child: Text("Alert_Dailog",style: TextStyle(fontSize: 40,color: Colors.black,backgroundColor: Colors.indigo.withValues(alpha: .10)),)),

          ],
        ),
      )
    );
  }
}
Widget ShimarButton(){
  return Shimmer.fromColors(

      child:Container(

        width: double.infinity,
        height: 50,
        color: Colors.white,

      ),
      baseColor:Colors.grey,

      highlightColor:Colors.white.withValues(alpha: .10)
  );
}

