


import 'package:flutter/material.dart';
import 'package:mc/views/screens/merchandiser/merchandiser_home/merchandiser_home_screen.dart';

class MerchandiserBottomNavBar extends StatefulWidget {
  @override
  _MerchandiserBottomNavBarState createState() => _MerchandiserBottomNavBarState();
}

class _MerchandiserBottomNavBarState extends State<MerchandiserBottomNavBar> {
  int _selectedIndex = 0;

  // List of screens to display based on selected index
  static const List<Widget> _widgetOptions = <Widget>[
    MerchandiserHomeScreen(),
    Text('Schedule Page'),
    Text('Order Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgetOptions.elementAt(_selectedIndex),


      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: _selectedIndex == 0 ? Colors.blue : Colors.black,
                ),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(
                  Icons.schedule,
                  color: _selectedIndex == 1 ? Colors.blue : Colors.black,
                ),
                onPressed: () => _onItemTapped(1),
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: _selectedIndex == 2 ? Colors.blue : Colors.black,
                ),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: _selectedIndex == 3 ? Colors.blue : Colors.black,
                ),
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}