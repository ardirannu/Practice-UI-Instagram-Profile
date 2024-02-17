import 'package:flutter/material.dart';

class CounterInfo extends StatelessWidget {
  const CounterInfo(
    this.title,
    this.value
  );

  final title;
  final value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "$value",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("$title"),
          ],
        ),
      ],
    );
  }
}