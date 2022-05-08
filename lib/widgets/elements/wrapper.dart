import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
