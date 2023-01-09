import 'dart:convert';

import 'package:tabsample/screens/dash_board_page.dart';
import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: new ThemeData(scaffoldBackgroundColor: Color(0xFF653d41)),
        home: DashBoardPage()
    );


  }
}
