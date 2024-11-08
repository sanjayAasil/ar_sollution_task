import 'package:flutter/material.dart';

class StatisticsTile extends StatelessWidget {
  final String text;
  final String number;

  const StatisticsTile({
    super.key,
    required this.text,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.numbers_outlined,
                  color: Colors.blue,
                ),
                const SizedBox(width: 20),
                Text(
                  number,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.blue),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
