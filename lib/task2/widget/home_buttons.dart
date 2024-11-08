import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTile(
          text: 'CREATE',
          callBack: () {},
          color: Colors.yellow,
        ),
        ButtonTile(
          text: 'READ',
          callBack: () {},
          color: Colors.redAccent,
        ),
        ButtonTile(
          text: 'UPDATE',
          callBack: () {},
          color: Colors.green,
        ),
        ButtonTile(
          text: 'DELETE',
          callBack: () {},
          color: Colors.purple,
        ),
      ],
    );
  }
}

class ButtonTile extends StatelessWidget {
  final String text;
  final GestureTapCallback callBack;
  final Color color;

  const ButtonTile({
    super.key,
    required this.text,
    required this.callBack,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
