import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/custom_color_container.dart';
import 'package:interview_dashboard/Widgets/custom_drawer.dart';
import 'package:interview_dashboard/Widgets/custom_planned_programs_row.dart';

class PlannedProgramsCard extends StatelessWidget {
  const PlannedProgramsCard({
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        CustomColorContainer(),
                        Text(
                          "Planned Programs",
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
                            backgroundColor: Color(0xffDFEDFF),
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            minimumSize: Size(77, 40)),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              color: Color(
                                0xff18283D,
                              ),
                              fontSize: 12),
                        ))
                  ],
                ),
                  CustomDivider(),
                SizedBox(
                  height: 10,
                ),
                CustomPlannedProgramsRow(
                  color: Color(0xffFFF4DE),
                  num: "327",
                  title: "Programs",
                ),
                SizedBox(
                  height: 30,
                ),
                CustomPlannedProgramsRow(
                  color: Color(0xffC9F7F5),
                  num: "120",
                  title: "Mentors",
                ),
                SizedBox(
                  height: 30,
                ),
                CustomPlannedProgramsRow(
                  color: Color(0xffEEE5FF),
                  num: "556",
                  title: "Mentees",
                ),
                SizedBox(
                  height: 65,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


