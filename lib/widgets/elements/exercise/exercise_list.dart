import 'package:chykara/widgets/elements/exercise/exercise_item.dart';
import 'package:flutter/material.dart';

import '../../../dummy_data_staging.dart';
import 'exercise_popup.dart';

class ExerciseList extends StatefulWidget {
  const ExerciseList({Key? key}) : super(key: key);

  @override
  State<ExerciseList> createState() => _ExerciseList();
}

class _ExerciseList extends State<ExerciseList> {
  final double circleRadius = 70;

  void markExercise(int index) {
    var item = dummyDataExercise[index];

    if (item.complete == false) {
      setState(() {
        item.complete = true;
      });
      return;
    }

    setState(() {
      item.complete = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (dummyDataExercise.length > 20) {
      throw Exception(
        'Something went wrong. Please reduce exercise amount to maximum 20',
      );
    }
    return dummyDataExercise.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return const Text('Please choose your Exercise');
            },
          )
        : ListView.separated(
            itemBuilder: (ctx, index) {
              return SizedBox(
                height: 140,
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (builder) {
                        return ExercisePopup(
                          circleRadius: circleRadius,
                          index: index,
                        );
                      },
                    ).then((_) => setState(() {}));
                  },
                  child: ExerciseItem(
                    circleRadius: circleRadius,
                    index: index,
                    markExercise: markExercise,
                  ),
                ),
              );
            },
            itemCount: dummyDataExercise.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
          );
  }
}
