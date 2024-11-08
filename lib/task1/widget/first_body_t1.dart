import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FirstBody extends StatelessWidget {
  const FirstBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Image.asset('assets/image_1.png'),
          const SizedBox(height: 30),
          const Row(
            children: [
              Icon(CupertinoIcons.home, color: Colors.blue),
              SizedBox(width: 20),
              Text(
                'Overview',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              Icon(Icons.grid_view_outlined),
              SizedBox(width: 20),
              Text(
                'Course',
                style: TextStyle(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              Icon(Icons.file_copy_sharp),
              SizedBox(width: 20),
              Text(
                'Resources',
                style: TextStyle(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              Icon(Icons.message),
              SizedBox(width: 20),
              Text(
                'Message',
                style: TextStyle(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              Icon(Icons.settings),
              SizedBox(width: 20),
              Text(
                'Settings',
                style: TextStyle(),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Image.asset('assets/image_2.png'),
          const SizedBox(height: 25),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue.shade100),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Upgrade your plan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Go to PRO',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
