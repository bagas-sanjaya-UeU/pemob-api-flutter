import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class BasePage extends StatelessWidget {
  final Widget bodyContent;
  final int selectedIndex;
  final HomeController _controller;

  const BasePage({
    Key? key,
    required this.bodyContent,
    required this.selectedIndex,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyContent,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: _controller.onBottomNavTapped,
        backgroundColor: Color.fromARGB(255, 76, 175, 81),
      ),
    );
  }
}
