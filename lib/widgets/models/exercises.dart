class Exercises {
  final String id;
  final String title;
  int series;
  int reps;
  double weight;
  final int seriesDuration;
  final int time;
  bool complete;

  Exercises({
    required this.id,
    required this.title,
    required this.series,
    required this.reps,
    this.weight = 0,
    this.seriesDuration = 3,
    this.time = 9,
    this.complete = false,
  });
}
