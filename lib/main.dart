import 'package:flutter/material.dart';
import 'package:tabsample/screens/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Color(0xFF0b2d47),
        hintColor: Colors.white,
        primaryColor: Color(0xFF0b2d47),
      ),
      home: LandingPage(),
    );
  }

}





