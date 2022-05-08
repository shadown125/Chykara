import 'package:flutter/material.dart';

import '../components/header.dart';
import '../elements/wrapper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Wrapper(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
