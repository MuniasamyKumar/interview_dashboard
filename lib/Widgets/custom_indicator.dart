
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final String type;
  final Color color;
  const CustomIndicator({
    super.key,
    required this.type,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
        Text(
          type,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
