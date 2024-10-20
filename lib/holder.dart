import 'package:flutter/material.dart';
import 'package:tinikling/account_profile_screen.dart';
import 'package:tinikling/home_screen.dart';
import 'package:tinikling/video_screen.dart';

class Holder extends StatefulWidget {
  const Holder({super.key});

  @override
  State<Holder> createState() => _HolderState();
}

class _HolderState extends State<Holder> {
  int _selectedIndex = 0; // To keep track of the selected index

  // List of screens
  final List<Widget> _screens = [
    HomeScreen(),
    VideoScreen(),
    AccountProfileScreen(),
  ];

  // Method to handle navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getAppBarTitle(_selectedIndex),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_selectedIndex], // Show the selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Handle tap
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  // Helper method to get the app bar title
  String _getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Videos';
      case 2:
        return 'Profile';
      default:
        return '';
    }
  }
}
