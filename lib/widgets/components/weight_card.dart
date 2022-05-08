import 'package:flutter/material.dart';

import '../../dummy_data_person.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({Key? key}) : super(key: key);

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  void add() {
    setState(() {
      dummyPersonData[0].weight += 0.5;
    });
  }

  void remove() {
    setState(() {
      dummyPersonData[0].weight -= 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Your current weight:'),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: remove,
                      icon: const Icon(Icons.remove_circle_outline_outlined),
                      iconSize: 30,
                      color: Colors.black,
                    ),
                    RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 30),
                        children: [
                          TextSpan(
                            text: dummyPersonData[0]
                                .weight
                                .toString()
                                .split(".")[0],
                            style: const TextStyle(
                                color: Colors.orange, fontSize: 40),
                          ),
                          const TextSpan(
                            text: '.',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: dummyPersonData[0]
                                .weight
                                .toString()
                                .split(".")[1],
                          ),
                          const TextSpan(
                            text: ' kg',
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: add,
                      icon: const Icon(Icons.add_circle_outline_outlined),
                      iconSize: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
