import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  var MyItem=[

    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzvqpiwNtuOCAbPswu89n_AgKonjRK6Nwhw&s","title":"Nihad"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_vHcYSdm8ev44NZtergCWZ4D0MEJSy6xe3w&s","title":"Nahid"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfI6PD4iSPHrlzNdTvpIAVL4ekFOnVLeobwA&s","title":"Nahid"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzvqpiwNtuOCAbPswu89n_AgKonjRK6Nwhw&s","title":"Nihad"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_vHcYSdm8ev44NZtergCWZ4D0MEJSy6xe3w&s","title":"Nahid"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfI6PD4iSPHrlzNdTvpIAVL4ekFOnVLeobwA&s","title":"Nahid"},
    {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZzvqpiwNtuOCAbPswu89n_AgKonjRK6Nwhw&s","title":"Nihad"},
    {"img":"https://i.postimg.cc/brCYh76X/Gemini-Generated-Image-576pzn576pzn576p.png","title":"Nahid"},
    {"img":"https://i.postimg.cc/2SwnwkrG/Chat-GPT-Image-Feb-1-2026-06-28-23-PM.png","title":"Nahid"},
    {"img":"https://i.postimg.cc/gkxmhBS0/e232d03f-8932-4529-b839-91adfc9c3c08.jpg","title":"Nahid"},

  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 1,
        ),
        itemCount: 100,
        itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){MyItem[index]["title"];},
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.white60,
              margin: EdgeInsets.all(10),
              child: Image.network(MyItem[index]["img"]!,fit: BoxFit.fill,height: 100,),
            ),


          );

        }
    ),

  );




  }

}