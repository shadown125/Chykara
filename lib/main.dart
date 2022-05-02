import 'package:flutter/material.dart';

import 'widgets/components/home.dart';
import 'widgets/utils/color_pallet.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chykara',
      theme: ThemeData(
        primaryColor: ColorPallet.colors['primary'],
        fontFamily: 'Noto',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
