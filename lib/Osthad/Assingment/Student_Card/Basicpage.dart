import 'package:flutter/material.dart';



class Basicpage extends StatefulWidget {
  const Basicpage({super.key});

  @override
  State<Basicpage> createState() => _BasicpageState();
}

class _BasicpageState extends State<Basicpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: .center,
                  children: [
                    CircleAvatar(radius: 50, backgroundImage:AssetImage("assets/images/nihad.png")
                    ),
                    Text(
                      "Md Nihad Islam",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "passionate about creating use-friendly and engaing digital experienes",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 3),
                        Text(
                          "nihadislam69318@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 3),
                        Text("+8801842454305"),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: .center,
                      mainAxisAlignment: .center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: .circular(20),
                            ),
                          ),
                          child: Text("Follow"),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Message"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Flexible(child: Divider()),
                SizedBox(width: 10),
                Text(
                  "Interest",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(width: 10),
                Flexible(child: Divider()),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 2,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              width: .infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/Cox'Bazar.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Travel"),
                            SizedBox(height: 5),
                            Text("I like Train Travel",style: TextStyle(fontSize: 18),),
                            SizedBox(height: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: .circular(10),
                                ),
                              ),
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 2,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: .stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              width: .infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/Cox'Bazar.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Photography",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "I like Photography",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: .circular(10),
                                ),
                              ),
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}