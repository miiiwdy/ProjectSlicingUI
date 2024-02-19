import 'package:flutter/material.dart';
import 'package:ulangan_ddg/fruitDetail.dart';
import 'bottomNavbar.dart';
import 'dart:ui';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 36, 34, 34),
        toolbarHeight: 90,
        leading: Container(
          margin: const EdgeInsets.only(top: 40, left: 25),
          child: const Icon(
            Icons.notes_rounded,
            color: Color(0xFFA8A8A8),
            size: 50,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xFFA8A8A8),
              size: 40,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 25, left: 15, top: 32),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  'assets/image/olla.png',
                  width: 47,
                  height: 47,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF2C2C2C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
            height: 210,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Container(
                    width: 230,
                    height: 230,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('./assets/image/fruitbucket.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: 353,
                      height: 130,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(160, 44, 44, 44),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1.9, sigmaY: 1.9),
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'O  F  F  E  R',
                        style: TextStyle(
                          color: Color(0xFFEEAC5C),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Discount up to 40% Off',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'In honor of World Health Day\nWe\'d like to give you this amazing \noffer.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 120,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEAC5C),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                'View Offers',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 30, 30, 30),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.only(top: 20, left: 13, right: 13),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Fruits',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFA8A8A8),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'View All ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 205, 171, 128),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 205, 171, 128),
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FruitDetail()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, top: 15),
                    child: Stack(
                      children: [
                        Container(
                          width: 181,
                          height: 230,
                          margin: const EdgeInsets.only(top: 57),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 67, 49, 27),
                            borderRadius: BorderRadius.all(Radius.circular(90)),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 0,
                          right: 25,
                          child: Image.asset(
                            './assets/image/pineapple.png',
                            width: 170,
                            height: 170,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 181,
                              height: 155,
                              margin: const EdgeInsets.only(top: 180),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 17, 17, 17),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(left: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 11),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Color.fromARGB(
                                                    255, 238, 172, 92),
                                              ),
                                              Text(
                                                " 5.0",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 240, 240, 240),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 18),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "F R U I T",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 238, 172, 92),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Pineapple',
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Rp.80.000/kg',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromARGB(
                                                        255, 205, 171, 128),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    child: Stack(
                      children: [
                        Container(
                          width: 181,
                          height: 230,
                          margin: const EdgeInsets.only(top: 57),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 67, 37, 27),
                            borderRadius: BorderRadius.all(Radius.circular(90)),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 0,
                          right: 0,
                          child: Image.asset(
                            './assets/image/apple.png',
                            width: 130,
                            height: 130,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 181,
                              height: 155,
                              margin: const EdgeInsets.only(top: 180),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 17, 17, 17),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(left: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 11),
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Color.fromARGB(
                                                    255, 238, 172, 92),
                                              ),
                                              Text(
                                                " 4.7",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 240, 240, 240),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 18),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "F R U I T",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 238, 172, 92),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Apple',
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Rp.25.000/kg',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Color.fromARGB(
                                                        255, 205, 171, 128),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: BottomNavbar(),
          ),
        ],
      ),
    );
  }
}
