import 'package:flutter/material.dart';

class CustomPlannedProgramsRow extends StatelessWidget {
  final Color color;
  final String num;
  final String title;
  const CustomPlannedProgramsRow({
    super.key,
    required this.color,
    required this.num,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            num,
            style: TextStyle(
                color: Color(0xff18283D),
                fontWeight: FontWeight.w700,
                fontSize: 20),
          )),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: Color(0xff18283D),
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
