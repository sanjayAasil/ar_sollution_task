import 'package:ar_sollutions/task2/view/home_page_t2.dart';
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
                'Hello BRUNO, welcome back!',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 30),
              TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () =>
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePageT2())),
                  child: const Text('Go to next Task ->')),
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
              SizedBox(height: 200, width: 300, child: Image.asset('assets/image_3.png')),
              SizedBox(height: 200, width: 300, child: Image.asset('assets/image_4.png')),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 200, width: 300, child: Image.asset('assets/image_5.png')),
              SizedBox(height: 200, width: 300, child: Image.asset('assets/image_3.png')),
            ],
          ),
        ],
      ),
    );
  }
}
