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
          spacing: 10,
          children: [
            CustomColorContainer(),
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
                minimumSize: Size(80, 40)),
            child: Expanded(
              child: Center(
                child: Row(
                  spacing: 5,
                  children: [
                    Text(
                      "Month",
                      style: TextStyle(color: Color(0xff1D5BBF), fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: Expanded(
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xff1D5BBF),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

