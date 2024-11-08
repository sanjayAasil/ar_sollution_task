import 'package:flutter/material.dart';

import '../widget/first_body_t1.dart';
import '../widget/second_body_t1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      ///main row
      body: Row(
        children: [
          FirstBody(),
          SecondBody(),
        ],
      ),
    );
  }
}
