import 'package:chykara/dummy_data_staging.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import '../elements/staging.dart';
import '../elements/info_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static int getTotalTime(Map<String, int> list) {
    int totalTime = 0;

    list.forEach((String key, int value) {
      totalTime = totalTime + value;
    });

    return totalTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Column(
          children: const [
            Staging(
              getTotalTime: getTotalTime,
            ),
            SizedBox(height: 25),
            InfoBox(
              getTotalTime: getTotalTime,
            ),
          ],
        ),
      ),
    );
  }
}
