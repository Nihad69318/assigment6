import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input="";
  String result="0";
  final  button=[
    "7","8","9","➗",
    "4","5","6","✖️",
    "1","2","3","-",
    "0",".","=","+",
    "C"
  ];


  void onButtonClick(String value){
    if (value =="C") {
      setState(() {
        input="";
        result="0";
      });
      return;

    }
    if(value=="="){
      calculateResult();
      return;

    }
    setState(() {
      input+=value;
    });
  }
  void calculateResult(){
    try{
      String expression=input
          .replaceAll('✖️', '*').replaceAll('➗', '/');
      Parser parser=Parser();
      Expression exp=parser.parse(expression);
      ContextModel contextModel=ContextModel();
      double eval=exp.evaluate(EvaluationType.REAL,contextModel);
      setState(() {
        result=eval.toString();
      });
    }catch(e){
      setState(() {
        result="Error";
      });
    }


  }
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: AppBar(
            title: Text("Calculator",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
            toolbarOpacity: 1,
            titleSpacing: 100,
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: Colors.blueAccent,
          ),
          body:Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ///Display

                        Text("$input",style: TextStyle(fontSize:20,fontWeight: FontWeight.normal ),),
                        SizedBox(height: 10,),
                        Text("$result",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold )),

                      ],
                    ),
                  ),
                ),
              ),
              //Buttons
              Expanded(
                flex: 7,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                    itemCount: button.length,
                    padding: EdgeInsets.all(16),
                    itemBuilder: (context,index){
                    return builButton(button[index]);

                    }
                ),
              )
              
            ],
          ) ,
        );
  }
  Widget builButton(String text){
    return GestureDetector(
   onTap: ()=>onButtonClick(text),
      child: Container(
        margin:const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,style:const TextStyle(
            fontSize: 22,
            color: Colors.white
          ),
          ),
        ),
      ),

    );
  }

}


