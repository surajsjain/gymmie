import 'package:fitnessscheduletracker/utils/color_schemes/ColorCombo.dart';
import 'package:flutter/material.dart';

class WorkoutSession {
  int weekday_number;
  String day_name;
  int n_body_parts, n_variation;
  String overview;
  ColorCombo _colorScheme;

  WorkoutSession(
      this.weekday_number, this.n_body_parts, this.n_variation, this.overview) {
    this.day_name = _setDayName(this.weekday_number);
    this.getColorCombo();
  }

  String getDayName() {
    return this.day_name;
  }

  String _setDayName(int day_number) {
    if (day_number == 1) {
      return 'Monday';
    } else if (day_number == 2) {
      return 'Tuesday';
    } else if (day_number == 3) {
      return 'Wednesday';
    } else if (day_number == 4) {
      return 'Thursday';
    } else if (day_number == 5) {
      return 'Friday';
    } else if (day_number == 6) {
      return 'Saturday';
    }
  }

  ColorCombo getColorCombo() {
    DateTime today = DateTime.now();
    if (today.weekday == weekday_number) {
      this._colorScheme = ColorCombo(
          backgoundColor: Colors.lightGreenAccent, textColor: Colors.black);
    } else {
      this._colorScheme =
          ColorCombo(backgoundColor: Colors.black87, textColor: Colors.white);
    }
    return this._colorScheme;
  }

  Widget getCardHeadContent() {
    return Text(
      this.day_name.substring(0, 3).toUpperCase(),
      style: TextStyle(
        color: this._colorScheme.textColor,
        fontSize: 54,
      ),
    );
  }

  Widget getCardBodyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${this.day_name} Workout',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: this._colorScheme.textColor,
            fontSize: 24,
          ),
        ),
        Text(
          '${this.n_body_parts} Body Parts, ${this.n_variation} Variations',
          style: TextStyle(
            color: this._colorScheme.textColor,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          '${this.overview}',
          style: TextStyle(color: this._colorScheme.textColor, fontSize: 32),
        )
      ],
    );
  }
}
