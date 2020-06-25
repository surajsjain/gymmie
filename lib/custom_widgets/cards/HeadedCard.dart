import 'package:fitnessscheduletracker/utils/HexColor.dart';
import 'package:fitnessscheduletracker/utils/color_schemes/ColorCombo.dart';
import 'package:flutter/material.dart';

class HeadedCard extends StatelessWidget {
  const HeadedCard({
    Key key,
    @required this.headContent,
    @required this.bodyContent,
    @required this.colorScheme,
  }) : super(key: key);

  final Widget headContent, bodyContent;

  final ColorCombo colorScheme;

  @override
  Widget build(BuildContext context) {
    HexColor hxc = HexColor();

    DateTime today = DateTime.now();
    int theDayToday = today.weekday;

    print(theDayToday);

//    ColorCombo primaryColors =
//        ColorCombo(backgoundColor: Colors.black87, textColor: Colors.white);

    return Card(
      color: colorScheme.backgoundColor,
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: this.headContent,
//              child: Text(
//                'MON',
//                style: TextStyle(
//                  color: primaryColors.textColor,
//                  fontSize: 54,
//                ),
//              ),
            ),
            Expanded(
              flex: 9,
              child: this.bodyContent,
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    'Monday Workout',
//                    textAlign: TextAlign.left,
//                    style: TextStyle(
//                      color: primaryColors.textColor,
//                      fontSize: 24,
//                    ),
//                  ),
//                  Text(
//                    '3 Body Parts, 3 Variations',
//                    style: TextStyle(
//                      color: primaryColors.textColor,
//                      fontSize: 12,
//                    ),
//                  ),
//                  SizedBox(
//                    height: 6,
//                  ),
//                  Text(
//                    'Chest, Back, Biceps',
//                    style:
//                        TextStyle(color: primaryColors.textColor, fontSize: 32),
//                  )
//                ],
//              ),
            ),
          ],
        ),
      ),
    );
  }
}
