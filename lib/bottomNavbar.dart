import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  final List<bool> _isItemEnabled = [true, true, true, true];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        child: Container(
          height: 105.0,
          width: screenWidth,
          decoration: const BoxDecoration(
            color: Color(0xFF2C2C2C),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              if (_isItemEnabled[index]) {
                setState(() {
                  _currentIndex = index;
                });
              }
            },
            backgroundColor: const Color(0xFF2C2C2C),
            selectedItemColor: const Color(0xFFEEAC5C),
            unselectedItemColor: const Color(0xFFA8A8A8),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 45.0,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: 'Heart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.my_library_books_outlined),
                label: 'Task/List',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
