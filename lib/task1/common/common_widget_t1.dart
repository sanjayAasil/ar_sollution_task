import 'package:flutter/material.dart';

class MyCourseTile extends StatelessWidget {
  final String firstName;
  final String secondName;
  final int percent;
  final String imageUrl;

  const MyCourseTile({
    super.key,
    required this.firstName,
    required this.secondName,
    required this.percent,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade500,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  firstName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  secondName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      '$percent%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 70),
            Image.network(imageUrl),
          ],
        ),
      ),
    );
  }
}
