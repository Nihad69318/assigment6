import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Container(
              height: 370,
              width: 370,
              child: Image.asset('assets/images/image 3.png'),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Hamburger Veggie Burger",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber,size: 20,fontWeight: .bold,),
                SizedBox(width: 10),
                Text('"4.8 - 14 mins"')
                // RichText(text: TextSpan(text: "4.8 - 14 mins",)),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('\$ 9.99'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('ORDER NOW'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Text("4.8"),
// SizedBox(width: 5),
// Text("-", style: TextStyle(fontSize: 30)),
// SizedBox(width: 5),
// Text("14mins"),