import 'package:fitnessscheduletracker/pages/Home.dart';
import 'package:fitnessscheduletracker/pages/WorkoutSessionDetails.dart';
import 'package:fitnessscheduletracker/utils/HexColor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HexColor hxc = HexColor();

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/workout_session_details': (context) => WorkoutSessionDetails(),
      },
//      theme: ThemeData(
//        fontFamily: 'SegoeUI',
//        primaryColor: hxc.getColor("#2b2b2b"),
//      ),
    );
  }
}
