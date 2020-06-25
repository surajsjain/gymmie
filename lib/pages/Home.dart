import 'dart:math';

import 'package:fitnessscheduletracker/custom_widgets/cards/HeadedCard.dart';
import 'package:fitnessscheduletracker/utils/workout/WorkoutSession.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  List workoutSessions = [
    WorkoutSession(1, 3, 3, "Chest, Back, Biceps"),
    WorkoutSession(2, 2, 3, "Shoulder, Triceps"),
    WorkoutSession(3, 2, 3, "Core, Legs"),
    WorkoutSession(4, 1, 8, "Bodyweight"),
    WorkoutSession(5, 1, 3, "Cardio"),
    WorkoutSession(6, 1, 1, "Marathon"),
  ];

  @override
  Widget build(BuildContext context) {
    Random rn = Random();
    int pic_num = rn.nextInt(5) + 1;

//    List workoutSessions = [
//      WorkoutSession(1, 3, 3, "Chest, Back, Biceps"),
//    ];

    WorkoutSession monday = WorkoutSession(1, 3, 3, "Chest, Back, Biceps");

    return Scaffold(
//      body: SingleChildScrollView(
//        child:
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/$pic_num.jpg'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Gym Workout Tracker",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return HeadedCard(
                  headContent: this.workoutSessions[index].getCardHeadContent(),
                  bodyContent: this.workoutSessions[index].getCardBodyContent(),
                  colorScheme: this.workoutSessions[index].getColorCombo(),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: this.workoutSessions.length,
            ),
          ),
        ],
      ),
    );
//    ,
//    );
  }
}
