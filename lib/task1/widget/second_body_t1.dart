import 'package:ar_sollutions/task1/widget/planning_tile.dart';
import 'package:ar_sollutions/task2/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondBody extends StatelessWidget {
  const SecondBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                '**Note: Make it full screen to see all the widgets clearly',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              const SizedBox(width: 200),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                ),
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreenT2())),
                child: const Text('Go to next Task ->'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                'Hello BRUNO, welcome back!',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              Text(
                'My Courses',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 150),
              Icon(Icons.search),
              Text('Search'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Image.asset('assets/image_3.png', height: 150, width: 300),
              Image.asset('assets/image_4.png', height: 150, width: 300),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/image_5.png', height: 150, width: 300),
              Image.asset('assets/image_3.png', height: 150, width: 300),
            ],
          ),
          const Row(
            children: [
              Text(
                'Planning',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'View All',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 180),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.calendar_month),
              ),
              Text(
                '20 May 2021',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              PlanningTile(
                iconColor: Colors.redAccent,
                title: 'Listening - Immediate Topic1',
                icon: Icons.headset,
              ),
              PlanningTile(
                iconColor: Colors.yellow,
                title: 'Listening - Immediate Topic1',
                icon: CupertinoIcons.speaker_1,
              ),
            ],
          ),
          const Row(
            children: [
              PlanningTile(
                iconColor: Colors.green,
                title: 'Speaking - Beginner Topic1',
                icon: CupertinoIcons.speaker_1,
              ),
              PlanningTile(
                iconColor: Colors.blue,
                title: 'Speaking - Beginner Topic1',
                icon: Icons.headset,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
