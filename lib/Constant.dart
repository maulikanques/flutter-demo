import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Constants {
  static const String OPEN_MUSEOSANS = "MuseoSans-700";

  static Color lightBlueAccent = Colors.lightBlueAccent;
  static Color blueGrey = Colors.blueGrey;
  static Color lightBlue = Color.fromRGBO(224, 245, 255, 1);
}

double widthSize(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double heightSize(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

class PageTitles {
  static const String home = 'Home';
  static const String logout = 'Logout';
}

class TileModel {
  final String title;
  final String userName;
  final IconData icon;

  const TileModel({required this.title, required this.userName, required this.icon});
}

List<TileModel> kTileList = [
  TileModel(
    title: 'Email Address',
    userName: 'alexxender@gmail.com',
    icon: Icons.mail_rounded,
  ),
  TileModel(
    title: 'Facebook',
    userName: 'Alex Xender',
    icon: FontAwesomeIcons.facebookF,
  ),
  TileModel(
    title: 'Github',
    userName: 'alexxender12',
    icon: FontAwesomeIcons.github,
  ),
  TileModel(
    title: 'LinkedIn',
    userName: 'Alex Xender',
    icon: FontAwesomeIcons.linkedin,
  ),
  TileModel(
    title: 'Medium',
    userName: 'alex-xender',
    icon: FontAwesomeIcons.medium,
  ),
  TileModel(
    title: 'Stack Overflow',
    userName: 'Alex Xender',
    icon: FontAwesomeIcons.medium,
  ),
];
