class Exercises {
  final String id;
  final String title;
  final int seriesDuration;
  final int series;
  final int kalories;
  final int time;

  Exercises({
    required this.id,
    required this.title,
    required this.series,
    this.kalories = 80,
    this.seriesDuration = 3,
    this.time = 9,
  });
}
