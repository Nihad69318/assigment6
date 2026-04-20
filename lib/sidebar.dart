import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  const sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width:250,


        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,

              child: Text("Admin_Panel",style: TextStyle(color: Colors.indigo,fontSize: 35,fontWeight: FontWeight.bold),),
            ),
            Expanded(
                child:ListView(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        child:Center(
                          child: Text("DashBord",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        )
                    ),    Container(
                        padding: EdgeInsets.all(20),
                        child:Center(
                          child: Text("Setting",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        )
                    ),    Container(
                        padding: EdgeInsets.all(20),
                        child:Center(
                          child: Text("Home",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        )
                    ),    Container(
                      padding: EdgeInsets.all(20),

                      child: Text("Reports / Analytics",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child:Center(
                          child: Text("Content Management",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        )
                    ),
                  ],
                )
            )


          ],

        ),
      ),
    );
  }
}
