import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanningTile extends StatelessWidget {
  final Color iconColor;
  final String title;
  final IconData icon;

  const PlanningTile({
    super.key,
    required this.iconColor,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      height: 70,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title),
              const Text(
                '3.00AM - 4.00PM',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
          const Icon(
            Icons.more_vert_rounded,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
