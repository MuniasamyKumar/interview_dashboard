
import 'package:flutter/material.dart';

class CustomColorContainer extends StatelessWidget {
  const CustomColorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 6,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff00AEBD), Color(0xff1D5BBF)]),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
