import 'package:flutter/material.dart';

import 'home/dashboardScreen.dart';
import 'login/loginScreen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        "/home": (context) => DashboardScreen()
      }
  ));
}
