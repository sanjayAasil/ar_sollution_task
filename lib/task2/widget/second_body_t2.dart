import 'package:flutter/material.dart';

class SecondBodyT2 extends StatefulWidget {
  const SecondBodyT2({super.key});

  @override
  State<SecondBodyT2> createState() => _SecondBodyT2State();
}

class _SecondBodyT2State extends State<SecondBodyT2> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          'Enter a message and click on the create button on the left to create message',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ],
    );
  }
}
