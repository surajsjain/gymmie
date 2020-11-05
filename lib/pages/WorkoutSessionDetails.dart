import 'dart:math';

import 'package:fitnessscheduletracker/custom_widgets/cards/HeadedCard.dart';
import 'package:fitnessscheduletracker/utils/color_schemes/ColorCombo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutSessionDetails extends StatefulWidget {
  @override
  _WorkoutSessionDetailsState createState() => _WorkoutSessionDetailsState();
}

class _WorkoutSessionDetailsState extends State<WorkoutSessionDetails> {
  int exercise = 0;

  Map workouts = {
    "Monday": [
      {
        'image_path': 'assets/exercises/chest_press.gif',
        'name': 'Chest Press',
        'reps': 10,
        'sets': 3,
        'video': 'VmB1G1K7v94',
        'weight': 10,
      },
      {
        'image_path': 'assets/exercises/Inclined Dumbbell Flies.gif',
        'name': 'Inclined Dumbbell Flies',
        'reps': 10,
        'sets': 3,
        'video': 'ajdFwa-qM98',
        'weight': 7.5,
      },
    ],
    "Tuesday": [
      {
        'image_path': 'assets/exercises/Front_Raise.gif',
        'name': 'Front Raise',
        'reps': 10,
        'sets': 3,
        'video': '-t7fuZ0KhDA',
        'weight': 5,
      },
      {
        'image_path': 'assets/exercises/cable_curl.gif',
        'name': 'Cable Curl',
        'reps': 10,
        'sets': 3,
        'video': 'fV9BpknCjGM',
        'weight': 40,
      },
    ],
    "Wednesday": [
      {
        'image_path': 'assets/exercises/b_crunch.gif',
        'name': 'Bicycle Crunch',
        'reps': 15,
        'sets': 3,
        'video': '9FGilxCbdz8',
        'weight': 0,
      },
      {
        'image_path': 'assets/exercises/lunges.gif',
        'name': 'Lunges',
        'reps': 15,
        'sets': 3,
        'video': 'wrwwXE_x-pQ',
        'weight': 7.5,
      },
    ],
    "Thursday": [
      {
        'image_path': 'assets/exercises/Mountain_Climbers.gif',
        'name': 'Mountain Climbers',
        'reps': 15,
        'sets': 3,
        'video': 'nmwgirgXLYM',
        'weight': 0,
      },
      {
        'image_path': 'assets/exercises/Donkey.gif',
        'name': 'Donkey Kick',
        'reps': 10,
        'sets': 3,
        'video': 'Ewx8fEt0iPA',
        'weight': 0,
      },
    ],
    "Friday": [
      {
        'image_path': 'assets/exercises/crosstrainer.gif',
        'name': 'Cross Trainer',
        'reps': 20,
        'sets': 3,
        'video': '5-6lVfTjKNk',
        'weight': 0,
      },
      {
        'image_path': 'assets/exercises/threadmill.gif',
        'name': 'Thread Mill',
        'reps': 15,
        'sets': 1,
        'video': 'n4I_fmegTRk',
        'weight': 0,
      },
    ],
    "Saturday": [
      {
        'image_path': 'assets/exercises/battlerope.gif',
        'name': 'Battle Rope',
        'reps': 15,
        'sets': 3,
        'video': 'r2Rzaf7SaGg',
        'weight': 0,
      },
      {
        'image_path': 'assets/exercises/jumprope.gif',
        'name': 'Jump Rope',
        'reps': 15,
        'sets': 3,
        'video': '1BZM2Vre5oc',
        'weight': 0,
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    Random rn = Random();
    int pic_num = rn.nextInt(5) + 1;

    Map data = ModalRoute.of(context).settings.arguments;
    // int day = data['day'];
    String dayName = data['day'];

    // print('\n\n${dayName}\n\n');

    ColorCombo focus = ColorCombo(
      backgoundColor: Colors.lightGreenAccent,
      textColor: Colors.black,
    );

    ColorCombo regular = ColorCombo(
      backgoundColor: Colors.black,
      textColor: Colors.white,
    );

    return Scaffold(
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 6.0, 0.0, 0.0),
              child: Text(
                '$dayName Workout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Exercises',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
//            Image.asset('assets/exercises/chest_press.gif'),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return HeadedCard(
                      cardPress: () {
                        Navigator.pushNamed(
                          context,
                          '/exercise_details',
                          arguments: this.workouts[dayName][index],
                        );
                        setState(() {
                          this.exercise++;
                        });
                      },
                      usePad: false,
                      headContent: Image.asset(
                        // 'assets/exercises/chest_press.gif',
                        this.workouts[dayName][index]['image_path'],
                      ),
                      bodyContent: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              this.workouts[dayName][index]['name'],
                              style: TextStyle(
                                color: (this.exercise == index)
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                            Text(
                              '${this.workouts[dayName][index]['reps']} Reps \t ${this.workouts[dayName][index]['sets']} sets',
                              style: TextStyle(
                                color: (this.exercise == index)
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      colorScheme: (this.exercise == index)
                          ? ColorCombo(
                              backgoundColor: Colors.lightGreenAccent,
                              textColor: Colors.black)
                          : ColorCombo(
                              backgoundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemCount: this.workouts[dayName].length),
            ),
            SizedBox(
              height: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}
