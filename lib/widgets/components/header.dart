import '../Utils/color_pallet.dart';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Center(
        child: GradientText(
          'CHYKARA',
          style: Theme.of(context).textTheme.headline1,
          colors: [
            ColorPallet.colors['purple']!,
            ColorPallet.colors['pink']!,
          ],
        ),
      ),
    );
  }
}
