import 'package:chykara/widgets/elements/staging.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import '../elements/staging.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Column(
          children: const [
            Staging(),
          ],
        ),
      ),
    );
  }
}
