import 'dart:math';

import 'package:fitnessscheduletracker/custom_widgets/cards/HeadedCard.dart';
import 'package:fitnessscheduletracker/utils/color_schemes/ColorCombo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutSessionDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random rn = Random();
    int pic_num = rn.nextInt(5) + 1;

    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          'Monday Workout',
//          style: TextStyle(
//            color: Colors.white,
//          ),
//        ),
//        backgroundColor: Colors.black,
//      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/images/$pic_num.jpg'),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.lightGreenAccent,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: SizedBox(),
//                        child: Text(
//                          '',
//                          style: TextStyle(
//                            fontSize: 36,
//                            color: Colors.amberAccent,
//                          ),
//                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 6.0, 0.0, 0.0),
              child: Text(
                'Monday Workout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Chest Exercises',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
//            Image.asset('assets/exercises/chest_press.gif'),
            HeadedCard(
              cardPress: () {},
              usePad: false,
              headContent: Image.asset(
                'assets/exercises/chest_press.gif',
//                width: 50,
//                height: 50,
              ),
              bodyContent: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Chest Press',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                      ),
                    ),
                    Text(
                      '10 Reps \t 3 sets',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              colorScheme: ColorCombo(
                  backgoundColor: Colors.lightGreenAccent,
                  textColor: Colors.black),
            ),
            SizedBox(
              height: 6.0,
            ),
            HeadedCard(
              cardPress: () {},
              usePad: false,
              headContent: Image.asset(
                'assets/exercises/Inclined Dumbbell Flies.gif',
//                width: 50,
//                height: 50,
              ),
              bodyContent: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Inclined Dumbbell Flies',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    Text(
                      '10 Reps \t 3 sets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              colorScheme: ColorCombo(
                  backgoundColor: Colors.black, textColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
