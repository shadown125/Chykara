import 'package:flutter/material.dart';

class ExercisePopupOption extends StatelessWidget {
  const ExercisePopupOption({
    Key? key,
    required this.id,
    required this.index,
    required this.title,
    required this.addFunction,
    required this.removeFunction,
    required this.item,
  }) : super(key: key);

  final dynamic id;
  final int index;
  final String title;
  final void Function(String) addFunction;
  final void Function(String) removeFunction;
  final dynamic item;
  final double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => removeFunction(id),
                icon: const Icon(Icons.remove_circle),
                iconSize: iconSize,
                color: Colors.red,
              ),
              Text(
                '$item',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () => addFunction(id),
                icon: const Icon(Icons.add_circle),
                iconSize: iconSize,
                color: Colors.green,
              )
            ],
          ),
        ),
      ],
    );
  }
}
