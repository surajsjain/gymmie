import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseDetails extends StatefulWidget {
  @override
  _ExerciseDetailsState createState() => _ExerciseDetailsState();
}

class _ExerciseDetailsState extends State<ExerciseDetails> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'VmB1G1K7v94',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  int n_sets_completed = 0;
  int sets_lim = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.lightGreenAccent,
            progressColors: ProgressBarColors(
              playedColor: Colors.lightGreenAccent,
              handleColor: Colors.lightGreenAccent,
            ),
            onReady: () {
//              _controller.addListener(listener),
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.lightGreenAccent,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Chest Press',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'No. of reps: 10',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Sets: 3',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Dumble Wright: 7.5 lbs',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
//          Text('Counter Starts Here'),
          Center(
            child: Text(
              'No. of sets completed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    if (this.n_sets_completed > 0) {
                      this.n_sets_completed--;
                    }
                  });
                },
                icon: Icon(
                  Icons.remove,
                  color: Colors.lightGreenAccent,
                ),
                color: Colors.lightGreenAccent,
              ),
              Text(
                '${this.n_sets_completed}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    this.n_sets_completed++;
                  });
                  Future.delayed(Duration(seconds: 1));
                  if (this.n_sets_completed == this.sets_lim) {
                    Navigator.pop(context);
                  }
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.lightGreenAccent,
                ),
                color: Colors.lightGreenAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
