
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyCalculatorApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MyCalculatorAppState();

}
class MyCalculatorAppState extends State<MyCalculatorApp>{
  String input="";
  String result="0";
  final buttionList=[
    "C", "DEL", "%", "÷",
    "7", "8", "9", "x",
    "4", "5", "6", "-",
    "1", "2", "3", "+",
    "0", ".", "ans", "="
  ];
  void onbutton(String value){

    setState(() {
      if (value=="C") {
        input="";
        result="0";

      }  else if (value =="DEL") {
        if (input.isNotEmpty) {
          input=input.substring(0,input.length-1);

        }

      }
      else if (value =="=") {
        onbuttonresult();

      }  else if (value=="ans") {
        input=result;


      }else  {
        input+=value;

      }

    });


  }
  void onbuttonresult(){
    try{
      String expression=input.replaceAll("x", "*").replaceAll("÷", "/");
      Parser nihad=Parser();
      Expression exp=nihad.parse(expression);
      ContextModel contextModel=ContextModel();
      double eval=exp.evaluate(EvaluationType.REAL, ContextModel());
      setState(() {
        result=eval.toString();
      });
    }catch(e){

      result="Error";
    }
  }
  Color getBtnColor(String text) {
    if (text == "C") return Colors.redAccent;
    if (text == "DEL") return Colors.orangeAccent;
    if (text == "=") return Colors.green;
    if (["÷", "x", "-", "+", "%", "ans"].contains(text)) return Colors.blueGrey.shade700;
    return Colors.blueGrey.shade400; // নম্বরগুলোর জন্য
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator App"),
        titleTextStyle: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,color: Colors.black,fontStyle: FontStyle.italic),
        toolbarHeight: 100,
        toolbarOpacity: 1,
        elevation: 1,
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [

          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text("$input",style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal,color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("$result",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                ],),
            ),
          ),
          Expanded(child: Divider(color: Colors.redAccent,)),
          Expanded(
            flex: 8,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 1
            ),
                itemCount:buttionList.length ,
                itemBuilder: (context,index){
                  return onbuttonClick(buttionList[index]) ;
                }
            ),
          )
        ],
      ),
    );
  }
  Widget onbuttonClick(String text){
    return GestureDetector(
      onTap: (){onbutton(text);},
      child: Container(


        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: getBtnColor(text),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
        ),
      ),
    );
  }

}