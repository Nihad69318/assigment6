//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowMaterialGrid: false,
//       title: "Tasbih Counter",
//       home: TasbihScreen(),
//     );
//   }
//
// }
// class TasbihScreen extends StatefulWidget{
//   const TasbihScreen({super.key});
//
//   @override
//   State<TasbihScreen> createState()=>_TasbihScreenState();
//
// }
// class _TasbihScreenState extends State<TasbihScreen>{
//   int counter=0;
//   bool isdark=false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Container(
//             width: 600,
//             height: 650,
//             padding: EdgeInsets.all(25),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//                 gradient: LinearGradient(
//                     colors:[
//                       Colors.deepPurple,
//                       Colors.deepPurple,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight
//                 )
//             ),
//             child:Column(
//               mainAxisAlignment:MainAxisAlignment.center,
//               children: [
//                 Text("لله أكبرا",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 30,
//                       color: Colors.white
//                   ),
//
//                 ),
//                 const SizedBox(height: 20,),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.white54,
//                   ),
//                   child: Text("0:00:40",
//                     style:TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//
//                   ),
//
//                 ),
//                 const SizedBox(height: 30,),
//                 const Text(
//                   "Tasbih Counter",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 10,),
//                 // Text(
//                 //     count.toString().padLeft(3, '0')
//                 // )
//                 Text(
//                   count.toString().padLeft(3, '0'),
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 40,
//                   ),
//                 ),
//
//
//
//               ],
//             )
//         ),
//       ),
//     );
//   }
//
// }
//
//
//
//
//
//


































































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
      title: "Counter App",
      debugShowMaterialGrid: false,
      home:  MyHomepage(),
    );
  }

}
class MyHomepage extends StatelessWidget{
  const MyHomepage({super.key});
  MySnackBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Robi App"),
        toolbarHeight: 60,
        titleSpacing: 0,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(onPressed: (){ MySnackBar(context,"I am seach"); }, icon:Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar(context,"I am settings");}, icon:Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar(context,"I am one_k_plus");}, icon:Icon(Icons.one_k_plus)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
        onPressed: (){
          MySnackBar(context, " I am FlotingAcction Button");},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,fontWeight: FontWeight.bold,size: 30,color: Colors.red,),label:" Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person,fontWeight: FontWeight.bold,size: 30,color: Colors.red,),label:" profile"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page,fontWeight: FontWeight.bold,size: 30,color: Colors.red,),label:"Contact page"),
        ],

      ),
    );
  }

}
