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
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
        SizedBox(width: 5),
        Text(
          type,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
