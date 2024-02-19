import 'package:flutter/material.dart';
import 'main.dart';

class FruitDetail extends StatelessWidget {
  const FruitDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded,
                color: Color(0xFFA8A8A8)),
            onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  ),
                }),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xFFA8A8A8),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Stack(children: [
        Container(
          margin: EdgeInsets.only(top: 300),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 19, 19, 19),
            borderRadius: BorderRadius.vertical(top: Radius.circular(190)),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(bottom:6),
                child: Text(
                  'F  R  U  I  T',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 205, 171, 128)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 90),
                child: Text(
                  'Pinneaple',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                width: 285,
                height: 285,
                child: Image.asset(
                  './assets/image/pineapple.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // DisgusTitle(),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      FloatingActionButton(
                        child: Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 205, 171, 128),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: const Color.fromARGB(255, 40, 40, 40),
                        onPressed: () {},
                      ),
                      Text(
                        'Quality\nAssurance',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FloatingActionButton(
                        child: Icon(
                          Icons.air_outlined,
                          color: Color.fromARGB(255, 205, 171, 128),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: const Color.fromARGB(255, 40, 40, 40),
                        onPressed: () {},
                      ),
                      Text(
                        'Fast\nDelivery',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FloatingActionButton(
                        child: Icon(
                          Icons.flatware_outlined,
                          color: Color.fromARGB(255, 205, 171, 128),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: const Color.fromARGB(255, 40, 40, 40),
                        onPressed: () {},
                      ),
                      Text(
                        'Best-in\nTaste',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 65, 65, 65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '7',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 205, 171, 128),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Go to Cart',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                          ),
                        ],
                      )),
                ],
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
