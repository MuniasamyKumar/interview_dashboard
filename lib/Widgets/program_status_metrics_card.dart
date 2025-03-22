import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/custom_drawer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:interview_dashboard/Widgets/custom_indicator.dart';
import 'package:interview_dashboard/Widgets/custom_title_bar.dart';

class ProgramStatusMetricsCard extends StatefulWidget {
  const ProgramStatusMetricsCard({super.key});

  @override
  State<ProgramStatusMetricsCard> createState() =>
      _ProgramStatusMetricsCardState();
}

class _ProgramStatusMetricsCardState extends State<ProgramStatusMetricsCard> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    super.initState();
    data = [
      _ChartData('Jan', 5, 10, 30),
      _ChartData('Feb', 10, 15, 35),
      _ChartData('Mar', 20, 25, 40),
      _ChartData('Apr', 15, 22, 38),
      _ChartData('May', 18, 28, 45),
      _ChartData('Jun', 25, 30, 50),
      _ChartData('Jul', 30, 35, 55),
      _ChartData('Aug', 28, 32, 48),
      _ChartData('Sep', 22, 28, 42),
      _ChartData('Oct', 20, 26, 40),
      _ChartData('Nov', 15, 20, 35),
      _ChartData('Dec', 10, 18, 30),
    ];
    _tooltip = TooltipBehavior(enable: true);
    _zoomPanBehavior =
        ZoomPanBehavior(enablePanning: true, zoomMode: ZoomMode.x);
  }

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
                CustomTitleBar(title: "Program Status Metrics"),
                CustomDivider(),
                const SizedBox(height: 10),
                SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interval: 1,
                    visibleMinimum: 0,
                    visibleMaximum: 3,
                  ),
                  primaryYAxis: NumericAxis(
                    minimum: 0,
                    maximum: 60,
                    interval: 10,
                    majorGridLines: const MajorGridLines(width: 1),
                  ),
                  zoomPanBehavior: _zoomPanBehavior,
                  tooltipBehavior: _tooltip,
                  series: <CartesianSeries<_ChartData, String>>[
                    ColumnSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y1,
                      name: 'Light Blue',
                      color: const Color(0xffC7DEFF),
                    ),
                    ColumnSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y2,
                      name: 'Medium Blue',
                      color: const Color(0xff7E9FD4),
                    ),
                    ColumnSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y3,
                      name: 'Dark Blue',
                      color: const Color(0xff1D5BBF),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIndicator(
                        color: const Color(0xff1D5BBF), type: "All programs"),
                    CustomIndicator(
                        color: const Color(0xff7E9FD4), type: "Active"),
                    CustomIndicator(
                        color: const Color(0xffC7DEFF), type: "Completed"),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y1, this.y2, this.y3);
  final String x;
  final double y1, y2, y3;
}
