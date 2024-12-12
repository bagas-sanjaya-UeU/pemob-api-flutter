import 'package:flutter/material.dart';

import 'base_page.dart';
import '../controllers/home_controller.dart';

import 'menu.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: MenuPage(),
      selectedIndex: 0,
      controller: widget.controller,
    );
  }
}
