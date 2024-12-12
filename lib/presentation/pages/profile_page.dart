import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class ProfilePage extends StatelessWidget {
  final HomeController controller;

  ProfilePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Profile(),
      selectedIndex: 2, // Profile tab is selected
      controller: controller,
    );
  }
}

class Profile extends StatelessWidget {
  // The URL of the image from the network
  final String imageUrl =
      'https://avatars.githubusercontent.com/u/110402853?v=4'; // Replace with your actual URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the profile image from the network
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/pas-foto.png'),
            ),
            SizedBox(height: 20),
            // User details
            Text(
              'Charderra Eka Bagas Sanjaya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'charderrasanjaya@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            Text(
              '20210801088',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
