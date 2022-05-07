import 'package:chykara/widgets/models/exercises.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import 'exercise.dart';
import '../elements/staging.dart';
import '../elements/info_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static int getTotalTime(List<Exercises> list) {
    int totalTime = 0;

    for (var key in list) {
      totalTime = totalTime + key.time;
    }

    return totalTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: SingleChildScrollView(
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
                Exercise(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
