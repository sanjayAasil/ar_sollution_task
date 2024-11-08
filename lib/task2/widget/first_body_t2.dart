import 'package:flutter/cupertino.dart';

import 'home_buttons.dart';

class FirstBodyT2 extends StatelessWidget {
  const FirstBodyT2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeButtons(),
      ],
    );
  }
}
