import 'package:flutter/material.dart';
import 'bottomNavbar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30)
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 36, 34, 34),
          leading: Icon(
            Icons.list,
            color: Color.fromARGB(255, 206, 189, 189),
            size: 50,
          ),
          actions: [
            Icon(
              Icons.shopping_bag_outlined, 
              color: Colors.white,
              size: 40,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 10),
              child: CircleAvatar(
                child: Image.asset("asset/alpukat.png"),
              ),
            )
          ],
      ),
      body: SafeArea(child: BottomNavbar()),
    );
  }
}