import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class uix extends StatefulWidget {
  const uix({super.key});

  @override
  State<uix> createState() => _uixState();
}

class _uixState extends State<uix> {


  List<Map<String,dynamic>>category=[
    {
      "icon": Icons.favorite,
      "name": "favorite",
    },    {
      "icon": Icons.car_crash,
      "name": "car_crash",
    },    {
      "icon": Icons.shop,
      "name": "shop",
    },    {
      "icon": Icons.cabin_outlined,
      "name": "cabin_outlined",
    },    {
      "icon": Icons.home,
      "name": "Home",
    },    {
      "icon": Icons.face,
      "name": "face",
    },    {
      "icon": Icons.offline_pin_rounded,
      "name": "offline_pin_rounded",
    },    {
      "icon": Icons.eighteen_up_rating_rounded,
      "name": "Heart",
    },    {
      "icon": Icons.fourteen_mp,
      "name": "Heart",
    },
  ];



  List<Map>Categoryitem=[
    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://static.fotor.com/app/features/img/step_new/features/1-Protrait.png",
      "title":"Dr.Jakiya ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStBt9_ppnDMl_bbi1QkQsO9_hWm237I43nsNk1aM8pSg&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTvgnZJVAqQy4Llk5UBGT1nlpVJ-DxLQdUU92UCDvj&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },{
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpaVNsG1_xgsWdHJfSbk6vTS6NZJZoj0mHiuT458ZBaQ&s",
      "title":"Dr.Leone ",
      "description":"Surgeen",
      "subtitle":"4.8"

    },

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: 250,
                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzsMl31Mb3l_gypy8Wk3Gsazp_zrhHybmzw&s",
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Hi,Programmer",
                      style: TextStyle(fontSize: 17, color: Colors.white70),
                    ),
                    Text(
                      "Your Health is Our ",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Text(
                      "First priority",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -20,
                left: 25,
                right: 25,
                child: Container(
                  height: 50,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(5, 6),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your search",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Category",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: category.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                            )
                          ]
                        ),
                        child: Icon(
                          category[index]['icon'],
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        category[index]['name'],
                      ),

                    ],
                  );
                }
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.only(right: 250),
          child: Text("Recommended Doctors",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                   mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 5/6
                ),
                itemCount: Categoryitem.length,
                itemBuilder: (context,index){
                  return foodItemView(Categoryitem[index]);

                }
            ),
          )

        ],
      ),
    );
  }

  foodItemView(Map CategoryList){
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(CategoryList["image"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Text(CategoryList['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Text(CategoryList['description'],style: TextStyle(fontWeight: FontWeight.w900),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,color: Color(0xFFFF9633)
                      ),
                      Text(CategoryList['subtitle']),
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



}
