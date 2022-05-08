import 'package:flutter/material.dart';

import '../models/exercises.dart';
import '../components/exercise_list.dart';
import '../elements/wrapper.dart';
import '../components/info_box.dart';
import '../components/staging.dart';

class Exercise extends StatelessWidget {
  const Exercise({Key? key}) : super(key: key);

  static int getTotalTime(List<Exercises> list) {
    int totalTime = 0;

    for (var key in list) {
      totalTime = totalTime + key.time;
    }

    return totalTime;
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Column(
        children: const [
          Staging(
            getTotalTime: getTotalTime,
          ),
          SizedBox(height: 25),
          InfoBox(
            getTotalTime: getTotalTime,
          ),
          SizedBox(height: 25),
          ExerciseList(),
        ],
      ),
    );
  }
}
