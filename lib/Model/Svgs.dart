import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Svgs extends StatefulWidget {
  const Svgs({super.key});

  @override
  State<Svgs> createState() => _SvgsState();
}

class _SvgsState extends State<Svgs> {
   List<String>category=[
     'combos','sliders','shop','car-shop','food-item','eloctronnils-item','combos','sliders','shop','car-shop','food-item','eloctronnils-item',

   ];
   int  selectedCategory=0;



   List<Map>foodsList=[
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
        backgroundColor: Colors.white,
        body: Padding(padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child:Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Foodgo.png"),
                            Text("Order your favourite food!",style:TextStyle(fontStyle:FontStyle.normal))
                          ],

                        ) ),
                    Expanded(
                      flex: 1,
                      child:Align(
                          alignment: Alignment.centerRight,
                          child:   Image.asset("assets/images/Mask group@2x.png")),
                    )


                  ],
                ),
              ),

              Container(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child:Container(

                            decoration: BoxDecoration(
                              boxShadow:[
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                    offset: Offset(1, .90)
                                )

                              ],
                              color: Colors.blueGrey.shade50,
                              borderRadius: BorderRadius.circular(20),

                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "search",hintStyle: TextStyle(fontSize: 20),
                                  prefixIcon: Icon(Icons.search)

                              ),
                            )
                        )
                    ),
                    Expanded(
                        flex: 1,
                        child:Container(
                          child: Image.asset("assets/images/settings-sliders.png"),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFFEF2A39),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )
                    )


                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                    itemBuilder: (context,index){
                    return selectedCategory==index?
                    selectedCategoryView(category[index]):
                    unselectedCategoryView(category[index],index);

                    }
                ),
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 12,
                      childAspectRatio: 4/6,

                    ),
                    itemCount: foodsList.length,
                    itemBuilder: (context,index){
                      return foodItemView(foodsList[index]);
                    }
                ),
              )









            ],
          ),)
    );
  }


  foodItemView(Map food){
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(food['image']),
              Text(food['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Text(food['description'],style: TextStyle(fontWeight: FontWeight.w900),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Icon(Icons.star,color: Color(0xFFFF9633)
                     ),
                     Text(food['ratings']),
                   ],
                 ),
                  Icon(Icons.favorite_outline)
                ],
              )
            ],
          ),
        ),
      ),
    );

  }






  unselectedCategoryView(String category,int index){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (){

          setState(() {
            selectedCategory=index;

          });
        },
        child: Container(
          child:Padding(
            padding: const EdgeInsets.all(10),
            child: Center(child: Text(category,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)),
          ) ,
          decoration: BoxDecoration(
            color: Color(0xFFF3F4F6),
            borderRadius: BorderRadius.circular(30)
          ),

        ),
      ),
    );
  }
   selectedCategoryView(String category){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        child:Padding(
          padding: const EdgeInsets.all(10),
          child: Center(child: Text(category,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)),
        ) ,
        decoration: BoxDecoration(
            color: Color(0xFFEF2A39),
            borderRadius: BorderRadius.circular(30)
        ),

      ),
    );

   }

}
