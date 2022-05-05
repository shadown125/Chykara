import 'package:flutter/material.dart';

import '../utils/color_pallet.dart';
import '../../dummy_data_staging.dart';
import '../models/exercises.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({Key? key, required this.getTotalTime}) : super(key: key);

  final int Function(List<Exercises>) getTotalTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorPallet.colors['primary']!,
              ColorPallet.colors['lightBlue']!,
            ],
            begin: Alignment.centerLeft,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 30, bottom: 20, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total: ${dummyDataExercise.length} exercises',
                    style: TextStyle(
                      color: ColorPallet.colors['white'],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Time: ${getTotalTime(dummyDataExercise)} min',
                    style: TextStyle(
                      color: ColorPallet.colors['white'],
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white54),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Energy you\'ll burn',
                    style: TextStyle(
                      color: ColorPallet.colors['white'],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    '250 Kcl',
                    style: TextStyle(
                      color: ColorPallet.colors['white'],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      elevation: 8,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
