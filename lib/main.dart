import 'package:flutter/material.dart';

import 'widgets/components/bottom_navigation.dart';
import 'widgets/components/header.dart';
import 'widgets/pages/home.dart';
import 'widgets/pages/exercise.dart';
import 'widgets/utils/color_pallet.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentPageIndex = 0;

  final pages = const [
    Home(),
    Exercise(),
  ];

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
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const Header(),
        body: pages[currentPageIndex],
        bottomNavigationBar: BottomNavigation(
          getCurrentIndex: (index) => setState(() {
            currentPageIndex = index;
          }),
        ),
      ),
    );
  }
}
