import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdBody extends StatelessWidget {
  const ThirdBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(CupertinoIcons.bell),

      ],
    );
  }
}
