import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.getCurrentIndex})
      : super(key: key);

  final Function(int) getCurrentIndex;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.white70,
      iconSize: 28,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          backgroundColor: Colors.blue,
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets_outlined),
          backgroundColor: Colors.red,
          label: 'Templates',
        ),
      ],
      onTap: (index) => setState(() {
        widget.getCurrentIndex(index);
        currentIndex = index;
      }),
    );
  }
}
