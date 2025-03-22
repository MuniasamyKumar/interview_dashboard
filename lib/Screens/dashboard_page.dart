import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/planned_programs_card.dart';
import 'package:interview_dashboard/Widgets/program_status_metrics_card.dart';
import 'package:interview_dashboard/Widgets/top_mentors_card.dart';
import 'package:interview_dashboard/Widgets/top_programs_card.dart';
import 'package:interview_dashboard/Widgets/program_type_metrics_card.dart';
import 'package:interview_dashboard/Widgets/program_mode_matrics_card.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 20,
                children: [
                  PlannedProgramsCard(),
                  ProgramStatusMetricsCard(),
                  TopProgramsCard(),
                  TopMentorsCard(),
                  ProgramTypeMetricsCard(),
                  ProgramModeMetricsCard(),
                  SizedBox()
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  spacing: 20,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: PlannedProgramsCard()),
                        SizedBox(width: 10),
                        Expanded(child: ProgramStatusMetricsCard()),
                      ],
                    ),
                    TopProgramsCard(),
                    TopMentorsCard(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: ProgramTypeMetricsCard()),
                        SizedBox(width: 10),
                        Expanded(child: ProgramModeMetricsCard()),
                      ],
                    ),
                    SizedBox()
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
