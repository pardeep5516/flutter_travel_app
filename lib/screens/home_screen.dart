import 'package:flutter/material.dart';
import 'package:travelapp/screens/dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<DashBoardScreen> dashboardScreen = [
    DashBoardScreen(),
    DashBoardScreen(),
    DashBoardScreen(),
    DashBoardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dashboardScreen[selectedIndex],
      backgroundColor: const Color(0xFF202020),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF202020),
        selectedItemColor: const Color(0xFFFD4F99),
        unselectedLabelStyle: const TextStyle(color: const Color(0xFF1B1B1B)),
        unselectedItemColor: const Color(0xFF888888),
        currentIndex: selectedIndex,
        iconSize: 27.0,
        onTap: (currentIndex) {
          setState(() {
            selectedIndex = currentIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF1B1B1B),
            icon: Icon(Icons.home),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFD4F99),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF1B1B1B),
            icon: Icon(Icons.search),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFD4F99),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF1B1B1B),
            icon: Icon(Icons.camera_alt),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFD4F99),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color(0xFF1B1B1B),
            icon: Icon(Icons.person_outline),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFD4F99),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
