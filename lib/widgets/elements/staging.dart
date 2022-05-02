import 'package:flutter/material.dart';

import '../../dummy_data_staging.dart';
import '../utils/color_pallet.dart';

class Staging extends StatelessWidget {
  const Staging({Key? key, required this.getTotalTime}) : super(key: key);

  final int? Function(Map<String, Map<String, int>>) getTotalTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: AssetImage('assets/images/staging-photo-chykara.jpg'),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 3,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${getTotalTime(dummyDataExercise).toString()} MINUTE WORKOUT',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text('${dummyDataExercise.length} exercise',
                  style: TextStyle(color: ColorPallet.colors['white']))
            ],
          ),
        ),
      ),
      elevation: 8,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
