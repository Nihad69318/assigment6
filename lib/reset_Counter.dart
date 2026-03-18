import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tasbih Counter",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>_HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  int count=0;
  counter(){
    setState(() {
      count++;
    });
  }

  reset(){
    setState(() {
      count=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green.shade300,
      body:Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  boxShadow:[
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.white.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ]
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),

                  child: Text(

                      count.toString(),

                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      )
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.white.withOpacity(.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                      )
                    ]
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed:()=>counter() ,
                      style: ElevatedButton.styleFrom(
                          maximumSize: const Size(80, 80)
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(

                      onPressed: ()=>reset(),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.red
                      ),
                      child: const Text("Reset"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

}