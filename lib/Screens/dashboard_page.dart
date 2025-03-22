import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/planned_programs_card.dart';
import 'package:interview_dashboard/Widgets/program_mode_matrics_card.dart';
import 'package:interview_dashboard/Widgets/program_status_metrics_card.dart';
import 'package:interview_dashboard/Widgets/program_type_metrics_card.dart';
import 'package:interview_dashboard/Widgets/top_mentors_card.dart';
import 'package:interview_dashboard/Widgets/top_programs_card.dart';

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
      body: SingleChildScrollView(
        child: Column(
          spacing: 25,
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
      ),
    );
  }
}



    