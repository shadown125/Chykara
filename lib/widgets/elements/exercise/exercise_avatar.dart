import 'package:flutter/material.dart';

import '../../utils/color_pallet.dart';

class ExerciseAvatar extends StatelessWidget {
  const ExerciseAvatar({
    Key? key,
    required this.circleRadius,
    required this.index,
  }) : super(key: key);

  final double circleRadius;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: circleRadius,
      backgroundColor: ColorPallet.exerciseColors[index].color,
      child: CircleAvatar(
        radius: circleRadius - 4,
        backgroundImage: const AssetImage(
          'assets/images/chykara-training-photo.jpg',
        ),
      ),
    );
  }
}
