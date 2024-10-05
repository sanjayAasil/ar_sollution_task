import 'package:ar_sollutions/View/second_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_body.dart';

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
