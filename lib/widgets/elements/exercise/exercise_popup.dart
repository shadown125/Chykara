import 'package:chykara/widgets/elements/buttons/button_primary.dart';
import 'package:flutter/material.dart';

import '../../../dummy_data_staging.dart';
import 'exercise_avatar.dart';
import 'exercise_popup_option.dart';

class ExercisePopup extends StatefulWidget {
  const ExercisePopup({
    Key? key,
    required this.circleRadius,
    required this.index,
  }) : super(key: key);

  final double circleRadius;
  final int index;

  @override
  State<ExercisePopup> createState() => _ExercisePopupState();
}

class _ExercisePopupState extends State<ExercisePopup> {
  @override
  Widget build(BuildContext context) {
    void add(id) {
      setState(() {
        if (id == 'series') {
          dummyDataExercise[widget.index].series++;
          return;
        }
        if (id == 'reps') {
          dummyDataExercise[widget.index].reps++;
          return;
        }
        if (id == 'weight') {
          dummyDataExercise[widget.index].weight += 0.5;
          return;
        }
      });
    }

    void remove(id) {
      setState(
        () {
          if (id == 'series') {
            dummyDataExercise[widget.index].series--;
            return;
          }
          if (id == 'reps') {
            dummyDataExercise[widget.index].reps--;
            return;
          }
          if (id == 'weight') {
            dummyDataExercise[widget.index].weight -= 0.5;
            return;
          }
        },
      );
    }

    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExerciseAvatar(
                circleRadius: widget.circleRadius - 20, index: widget.index),
            const SizedBox(
              height: 20,
            ),
            Text(
              dummyDataExercise[widget.index].title,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 14,
            ),
            ExercisePopupOption(
              id: 'series',
              index: widget.index,
              title: 'Series: ',
              addFunction: add,
              removeFunction: remove,
              item: dummyDataExercise[widget.index].series,
            ),
            ExercisePopupOption(
              id: 'reps',
              index: widget.index,
              title: 'Reps: ',
              addFunction: add,
              removeFunction: remove,
              item: dummyDataExercise[widget.index].reps,
            ),
            if (dummyDataExercise[widget.index].weight > 0)
              ExercisePopupOption(
                id: 'weight',
                index: widget.index,
                title: 'Weight: ',
                addFunction: add,
                removeFunction: remove,
                item: dummyDataExercise[widget.index].weight,
              ),
            const SizedBox(
              height: 50,
            ),
            const ButtonPrimary(
              text: 'Apply Changes',
              colors: [
                Color.fromRGBO(249, 106, 158, 1),
                Color.fromRGBO(255, 165, 128, 1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
