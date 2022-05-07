import 'package:flutter/material.dart';

import 'exercise_avatar.dart';
import '../../../dummy_data_staging.dart';

class ExerciseItem extends StatelessWidget {
  const ExerciseItem({
    Key? key,
    required this.circleRadius,
    required this.index,
    required this.markExercise,
  }) : super(key: key);

  final double circleRadius;
  final int index;
  final void Function(int) markExercise;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: circleRadius,
          ),
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(
                left: circleRadius + 10,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dummyDataExercise[index].title,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Series: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${dummyDataExercise[index].series}',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Reps: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${dummyDataExercise[index].reps}',
                          ),
                        ],
                      ),
                      if (dummyDataExercise[index].weight > 0)
                        Row(
                          children: [
                            const Text(
                              'Weight: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${dummyDataExercise[index].weight}kg',
                            ),
                          ],
                        ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.check_circle_outline),
                    color: dummyDataExercise[index].complete
                        ? Colors.green
                        : Colors.grey,
                    onPressed: () => markExercise(index),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
            elevation: 8,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        ExerciseAvatar(circleRadius: circleRadius, index: index),
      ],
    );
  }
}
