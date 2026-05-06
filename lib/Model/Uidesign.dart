import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uidesign extends StatefulWidget {
  const Uidesign({super.key});

  @override
  State<Uidesign> createState() => _UidesignState();
}

class _UidesignState extends State<Uidesign> {


  List<Map>CategoryItem=[
    {
      "image": "assets/images/image 4.png",
      'title':'Cheeseburger',
      'description':' Wendy Burger',
      'ratings':'4.9'
    },     {
      "image": "assets/images/image 4.png",
      'title':'Hamburger',
      'description':'Veggie Burger',
      'ratings':'4.8'
    },     {
      "image": "assets/images/image 5.png",
      'title':'Hamburger',
      'description':' Chicken Burger',
      'ratings':'4.6'
    },     {
      "image": "assets/images/image 5.png",
      'title':'Hamburger',
      'description':'Fried Chicken Burger',
      'ratings':'4.5'
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(child: Image.asset("assets/images/Cox'Bazar.jpg",fit: BoxFit.cover,)),
                  Positioned(child: Container(color: Colors.grey.withOpacity(0.1),)),
                    Positioned(
                      left: 25,
                        top:40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi,Programmer!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
                            ),  Text("Md Nihad Islam!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                            ),Text("Flutter Developer!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                            ),
                            SizedBox(height: 50,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.check_circle,color: Colors.purple,),
                                Text("Mobile App Developer",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        ),
                    ),

                  ],
                ),

              ],
            ),
          ),
          Expanded(

            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                ),
                itemCount: CategoryItem.length,
                itemBuilder: (context,index){
                  return CategoryItemList(CategoryItem[index]);


                }
            ),
          )
          
        ],
      ),
    );
  }

  CategoryItemList(Map Category){
    return Container(
      child: Card(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(Category["image"])
            ],
          ),
        ),
      ),
    );

}



}
