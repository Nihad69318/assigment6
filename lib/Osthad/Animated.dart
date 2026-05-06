
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class class2 extends StatefulWidget {
  const class2({super.key});

  @override
  State<class2> createState() => _class2State();
}

class _class2State extends State<class2> {
bool Isexpanded=false;

int CurrentActiveStep=0;
List<Step>StepList()=>
  [
    Step(isActive:CurrentActiveStep>=0 ,
        title: Text("Beginner"), content: Center(child: Text("Your are a begginer Programmer"),)),
    Step(isActive:  CurrentActiveStep>=1,
        title: Text("Mid Level"), content: Center(child: Text("Your are a mid level Programmer"),)),
    Step(isActive:  CurrentActiveStep>=2,
        title: Text("Advanced"), content: Center(child: Text("Your are a advanced Programmer"),))
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        toolbarOpacity: 1,
        toolbarHeight: 100,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Stepper(
            //     connectorColor: MaterialStateProperty.all(Colors.blue) ,
            //     currentStep: 2,
            //     steps: [
            //   Step(title: Text("Address"), content: TextField(
            //     decoration:InputDecoration(
            //       hintText: "Enter Address"
            //     ),
            //   )),
            //   Step(title: Text("Payment"), content: TextField(
            //     decoration:InputDecoration(
            //       hintText: "Select Payment Method"
            //     ),
            //   )),
            //   Step(title: Text("Confirm"), content: TextField(
            //     decoration:InputDecoration(
            //       hintText: "Review and place order"
            //     ),
            //   )),
            // ]),
















Stepper(
  type:  StepperType.vertical,
    currentStep:CurrentActiveStep ,
    onStepContinue: (){
    if (CurrentActiveStep<(StepList().length -1)) {
      setState(() {
        CurrentActiveStep+=1;
      });
      
    }  
    },
    onStepCancel: (){
    if (CurrentActiveStep==0) {
      return;

      
    }
    setState(() {
      CurrentActiveStep-=1;
    });
    },
    onStepTapped: (int index){
    setState(() {
      CurrentActiveStep=index;
    });

    },


    




    steps: StepList()
)

























//
// InkWell(
//   onTap:  (){
//     setState(() {
//       Isexpanded=!Isexpanded;
//     });
//   },
//   child: AnimatedContainer(duration: Duration(seconds: 3),
//   width: 250,
//     height:Isexpanded?250:150,
//     decoration: BoxDecoration(
//       color: Colors.blue
//     ),
//   ),
// ),
//             SizedBox(height: 12,),
//             InkWell(
//   onTap:  (){
//     setState(() {
//       Isexpanded=!Isexpanded;
//     });
//   },
//   child: Container(
//   width: 250,
//     height:Isexpanded?250:150,
//     decoration: BoxDecoration(
//       color: Colors.green
//     ),
//   ),
// ),
//             AnimatedOpacity(opacity: Isexpanded?1:0, duration: Duration(seconds: 2),
//             child: Card(
//               child: Text("Hello Nihad",style: TextStyle(fontSize: 30,color: Colors.red),),
//             ),),
//             TweenAnimationBuilder(
//                 tween:Tween<double>(begin: 0,end: 1500),
//                 duration: Duration(seconds: 3),
//                 builder:(context,value,child){
//                   return Text("৳ ${value.toInt()}",
//                     style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),
//                   );
//                 }
//             ),
//             TweenAnimationBuilder(
//                 tween:Tween<double>(begin: 0,end: 1500),
//                 duration: Duration(seconds: 10),
//                 builder:(context,value,child){
//                   return LinearProgressIndicator(
//                     value: value,
//                     minHeight: 10,
//                     color: Colors.green,
//
//                   );
//                 }
//             ),
//
//             AnimatedAlign(alignment: Isexpanded?Alignment.topRight:Alignment.topLeft,
//                 duration: Duration(seconds: 5),child:
//              CircleAvatar(
//                radius: 50,
//                backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
//              ),)
//
//
//
//








          ],
        ),
      ),
    );
  }
}
