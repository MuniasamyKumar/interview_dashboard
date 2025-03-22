import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/custom_drawer.dart';
import 'package:interview_dashboard/Widgets/custom_indicator.dart';
import 'package:interview_dashboard/Widgets/custom_title_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgramTypeMetricsCard extends StatelessWidget {
  const ProgramTypeMetricsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomTitleBar(
                  title: "Program Type Metrics",
                ),
                CustomDivider(),
                SizedBox(
                  height: 10,
                ),
                CircularPercentIndicator(
                  radius: 135,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 30,
                  percent: 0.7,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Programs",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color(0xff18283D)),
                      ),
                      Text(
                        "94",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                            color: Color(0xff18283D)),
                      ),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Color(0xffFFBB00),
                  progressColor: Color(0xff1954BF),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIndicator(
                        color: Color(0xffFFBB00), type: "Premium   40"),
                    CustomIndicator(
                        color: Color(0xff1954BF), type: "Free   54"),
                  ],
                ),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
