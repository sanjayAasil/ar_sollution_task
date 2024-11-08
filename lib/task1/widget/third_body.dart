import 'package:ar_sollutions/task1/widget/statistics_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdBody extends StatelessWidget {
  const ThirdBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(CupertinoIcons.bell),
            const SizedBox(width: 150),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.blue,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Ms Dhoni'),
                      Text(
                        'Basic plan',
                        style: TextStyle(color: Colors.blue, fontSize: 10),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert_rounded,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Statistics',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Row(
          children: [
            StatisticsTile(
              text: 'Courses\nCompleted',
              number: '02',
            ),
            StatisticsTile(
              text: 'Total Points\nGained',
              number: '250',
            ),
          ],
        ),
        const Row(
          children: [
            StatisticsTile(
              text: 'Courses\nIn progress',
              number: '04',
            ),
            StatisticsTile(
              text: 'Tasks\nCompleted',
              number: '100',
            ),
          ],
        ),
      ],
    );
  }
}
