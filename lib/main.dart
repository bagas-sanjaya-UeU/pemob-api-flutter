import 'package:flutter/material.dart';

import 'presentation/pages/home_page.dart';
import 'presentation/pages/profile_page.dart';
import 'presentation/pages/settings_page.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'domain/usecases/navigate_to_page.dart';
import 'presentation/pages/login_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      title: 'Pemob Tracking Data Lokasi Isolasi Mandiri',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home', // Ubah rute awal ke halaman login
      routes: {
        '/home': (context) => HomePage(homeController),
        '/profile': (context) => ProfilePage(homeController),
        '/settings': (context) => SettingsPage(homeController),
      },
    );
  }
}
