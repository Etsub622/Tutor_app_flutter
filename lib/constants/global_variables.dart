import 'package:flutter/material.dart';

String uri = 'http://192.168.56.1:3000';
class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );
  static const secondaryColor = Color.fromARGB(255, 26, 164, 164);
  static const backgroundColor = Color.fromARGB(255, 246, 233, 233);
  static const Color greyBackgroundColor = Color.fromARGB(255, 195, 203, 203);
  static var selectedNavBar = Colors.cyan;
  static const unselectedNavBar = Colors.black87;

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Math',
      'image': 'Asset/images/Math.jpg',
    },
    {
      'title': 'Biology',
      'image': 'Asset/images/biology.jpg',
    },
    {
      'title': 'Chemistry',
      'image': 'Asset/images/chemistry.jpg',
    },
    {
      'title': 'English',
      'image': 'Asset/images/English.jpg',
    },
    {
      'title': 'Physics',
      'image': 'Asset/images/pysics.jpg',
    },
    
  ];
}
