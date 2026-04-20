import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Center(
        child: Icon(Icons.shopping_cart,size: 20,color: Colors.red,fontWeight: FontWeight.bold,),
      ),
    );
  }
}
