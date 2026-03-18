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
  title: "PhotoGally",
  debugShowCheckedModeBanner: false,
  home: Activepage(),
);
  }

}
var MyItems=[
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCI8dI9Gw3qCv_hVLs8mi7FBuwlkNOwcPD8Q&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUnuYAM1fYkqh0C_GtKnKMEQEvN9-uBIOyDA&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDw2oclmP352XB03wQ_AhPdcGLeVLGP3tHNw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4n-o7UGRICnWwmfgpCqCKNq2xvQtgWoT-7g&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCVSz22AtpmGpsbyyRLp8bjiSXU8zhpB1dgw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzsMl31Mb3l_gypy8Wk3Gsazp_zrhHybmzw&s","title":"Nihad"},

  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCI8dI9Gw3qCv_hVLs8mi7FBuwlkNOwcPD8Q&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUnuYAM1fYkqh0C_GtKnKMEQEvN9-uBIOyDA&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDw2oclmP352XB03wQ_AhPdcGLeVLGP3tHNw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4n-o7UGRICnWwmfgpCqCKNq2xvQtgWoT-7g&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCVSz22AtpmGpsbyyRLp8bjiSXU8zhpB1dgw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzsMl31Mb3l_gypy8Wk3Gsazp_zrhHybmzw&s","title":"Nihad"},

  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCI8dI9Gw3qCv_hVLs8mi7FBuwlkNOwcPD8Q&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUnuYAM1fYkqh0C_GtKnKMEQEvN9-uBIOyDA&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDw2oclmP352XB03wQ_AhPdcGLeVLGP3tHNw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4n-o7UGRICnWwmfgpCqCKNq2xvQtgWoT-7g&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCVSz22AtpmGpsbyyRLp8bjiSXU8zhpB1dgw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzsMl31Mb3l_gypy8Wk3Gsazp_zrhHybmzw&s","title":"Nihad"},

  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCI8dI9Gw3qCv_hVLs8mi7FBuwlkNOwcPD8Q&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUnuYAM1fYkqh0C_GtKnKMEQEvN9-uBIOyDA&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDw2oclmP352XB03wQ_AhPdcGLeVLGP3tHNw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4n-o7UGRICnWwmfgpCqCKNq2xvQtgWoT-7g&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCVSz22AtpmGpsbyyRLp8bjiSXU8zhpB1dgw&s","title":"Nihad"},
  {"img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzsMl31Mb3l_gypy8Wk3Gsazp_zrhHybmzw&s","title":"Nihad"},


];
MySnackBar(context,meassage){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(meassage))
  );
}
class Activepage extends StatelessWidget{
  const Activepage({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
  title: Text("Photo Gallery"),
    toolbarOpacity: 1,
    toolbarHeight: 80,
    titleSpacing:120,
    backgroundColor: Colors.green,
  ),
  backgroundColor: Colors.blueGrey,
  body: GridView.builder(
    physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1,
      ),
      itemCount:MyItems.length,
      itemBuilder: (context,index){
        return
         Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                MyItems[index]["img"]!,
                fit: BoxFit.cover,
              ),
            ),
         );
      }
  ),
);
  }

}