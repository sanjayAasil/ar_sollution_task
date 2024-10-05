import 'package:ar_sollutions/common_widget.dart';
import 'package:flutter/material.dart';

class SecondBody extends StatelessWidget {
  const SecondBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello BRUNO, welcome back!',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 30),
          Row(
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
          SizedBox(height: 20),
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
