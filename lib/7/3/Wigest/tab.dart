import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  const TableView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(

          child: Text("Tab DashBord",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange,),
        ),
        ),
        ListTile(
          title: Text("Md Nihad Islam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
          subtitle: Text("Flutter Developer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          textColor: Colors.blueGrey,

        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 2,
              ),
              padding: EdgeInsets.all(19),
              physics: BouncingScrollPhysics(),
              itemCount: 100,


              itemBuilder: (context,index){
                return Container(
                  color: Colors.amber,

                  child: Center(

                    child: Text("index${index+1}")
                  ),
                );
              }
          ),
        ),
        Container(
          child: Center(
            child: Text("@69318Company",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          
        )
      ],
    );
  }
}
