import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class PakgeClass3 extends StatefulWidget {
  const PakgeClass3({super.key});

  @override
  State<PakgeClass3> createState() => _PakgeClass3State();
}

class _PakgeClass3State extends State<PakgeClass3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.lightBlueAccent,
            // ),
            // SizedBox(height: 12,),


        //flutter_screenutil: ^5.9.3 packge

            // Container(
            //   height: 180.h,
            //   width: 180.w,
            //   color: Colors.green,
            // ),
            // SizedBox(height: 12,),
            // Container(
            //   height: .2.sh,
            //   width: .2.sw,
            //   color: Colors.red,
            // ),
            // SizedBox(height: 12,),
            //
            // Text("Hello without res",style: TextStyle(fontSize: 30),),
        //     // Text("Hello wit res",style: TextStyle(fontSize: 30.sp),),



        //flutter_staggered_grid_view: ^0.7.0



        // StaggeredGrid.count(
        //   crossAxisCount: 4,
        //   mainAxisSpacing: 4,
        //   crossAxisSpacing: 4,
        //   children: [
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 2,
        //       mainAxisCellCount: 2,
        //       child:Card(
        //         child: Column(
        //           children: [
        //         Image.asset("assets/images/Cox'Bazar.jpg"),
        //             Text("Image")
        //           ],
        //         ),
        //       )
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 2,
        //       mainAxisCellCount: 1,
        //       child: Card(
        //         child: Column(
        //           children: [
        //             Image.asset("assets/images/Cox'Bazar.jpg"),
        //             Text("Image")
        //           ],
        //         ),
        //       )
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 1,
        //       mainAxisCellCount: 1,
        //       child: Card(
        //         child: Column(
        //           children: [
        //             Image.asset("assets/images/Cox'Bazar.jpg"),
        //             Text("Image")
        //           ],
        //         ),
        //       )
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 1,
        //       mainAxisCellCount: 1,
        //       child:Card(
        //         child: Column(
        //           children: [
        //             Image.asset("assets/images/Cox'Bazar.jpg"),
        //             Text("Image")
        //           ],
        //         ),
        //       )
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 4,
        //       mainAxisCellCount: 2,
        //       child:Card(
        //         child: Column(
        //           children: [
        //             Image.asset("assets/images/Cox'Bazar.jpg"),
        //             Text("Image")
        //           ],
        //         ),
        //       )
        //     ),
        //   ],
        // ),
           // Expanded(
           //   child: MasonryGridView.count(
           //     itemCount: 5,
           //       crossAxisCount: 1, itemBuilder:(context,index){
           //     return Card(
           //       child: Column(
           //         children: [
           //           Image.asset("assets/images/Cox'Bazar.jpg"),
           //           Text("Image")
           //         ],
           //       ),
           //     );
           //   }),
           // )







          //  shimmer_animation




            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context,index){
                return Shimmer.fromColors(

                    baseColor:Colors.grey.shade100,
                    highlightColor:Colors.white,
                  child:ListTile(
                    leading: CircleAvatar(radius: 25,backgroundColor: Colors.white,),
                    title: Container(
                      height: 16,

                      color: Colors.white,
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: .8),
                      child: Container(
                        height: 12,
                        width: 120,
                        color: Colors.white,
                      ),
                    ),

                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
