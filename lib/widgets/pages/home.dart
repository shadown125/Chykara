import 'package:flutter/material.dart';

import '../elements/wrapper.dart';
import '../components/weight_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Column(
        children: const [
          WeightCard(),
        ],
      ),
    );
  }
}
