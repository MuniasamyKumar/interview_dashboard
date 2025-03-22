import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/custom_color_container.dart';

class CustomTitleBar extends StatelessWidget {
  final String title;
  const CustomTitleBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomColorContainer(),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff18283D),
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffD9E4F2),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            minimumSize: Size(80, 40),
          ),
          child: Row(
            children: [
              Text(
                "Month",
                style: TextStyle(color: Color(0xff1D5BBF), fontSize: 12),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xff1D5BBF),
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

