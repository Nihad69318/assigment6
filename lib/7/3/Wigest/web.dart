import 'package:flutter/material.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        SizedBox(
          child:
              Container(
                width:250,

                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(



                      color: Colors.blueGrey,
                      width: double.infinity,
                      child: Text("Admin Panel",style: TextStyle(color: Colors.pinkAccent,fontSize: 30),),
                    ),

                    ListTile(
                      leading: Icon(Icons.dashboard,color: Colors.amber,),
                      title: Text("DashBord",style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
                    ),    ListTile(
                      leading: Icon(Icons.settings,color: Colors.amber,),
                      title: Text("settings",style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
                    ),    ListTile(
                      leading: Icon(Icons.shop,color: Colors.amber,),
                      title: Text("shop",style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
                    ),    ListTile(
                      leading: Icon(Icons.report,color: Colors.amber,),
                      title: Text("report",style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
              )

        ),


        Expanded(
          child: Column(
            children: [
              Container(

                child: Text("Web DashBord",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange,),
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
                      crossAxisCount:4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 2,
                    ),
                    padding: EdgeInsets.all(19),
                    physics: BouncingScrollPhysics(),
                    itemCount: 100,


                    itemBuilder: (context,index){
                      return Container(
                        color: Colors.cyan,

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
          ),
        ),
      ],
    );
  }
}
