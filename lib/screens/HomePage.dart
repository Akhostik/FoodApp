import 'package:flutter/material.dart';
import 'package:flutter_app3/screens/explore.dart';
import 'package:flutter_app3/screens/favorites.dart';
import 'package:flutter_app3/screens/my_order.dart';
import 'package:flutter_app3/screens/profile.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = [ Explore(),MyOrder(),Favorites(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTap,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.grey[100],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Explore'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'My Order'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          )
        ],
      ),

      // CODE FOR THE BODY PROPER
      body:
          Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        ),
      
    
    
    );
  }
}