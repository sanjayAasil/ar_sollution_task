import 'package:ar_sollutions/task2/widget/first_body_t2.dart';
import 'package:ar_sollutions/task2/widget/home_buttons.dart';
import 'package:ar_sollutions/task2/widget/second_body_t2.dart';
import 'package:flutter/material.dart';

class HomePageT2 extends StatefulWidget {
  const HomePageT2({super.key});

  @override
  State<HomePageT2> createState() => _HomePageT2State();
}

class _HomePageT2State extends State<HomePageT2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase'),
      ),
      body: const Row(
        children: [
          Flexible(
            flex: 1,
            child: FirstBodyT2(),
          ),
          Flexible(
            flex: 3,
            child: SecondBodyT2(),
          ),
        ],
      ),
    );
  }
}
