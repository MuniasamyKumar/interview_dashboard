import 'package:flutter/material.dart';
import 'package:interview_dashboard/Widgets/custom_color_container.dart';
import 'package:interview_dashboard/Widgets/custom_drawer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TopProgramsCard extends StatefulWidget {
  const TopProgramsCard({super.key});

  @override
  State<TopProgramsCard> createState() => _TopProgramsCardState();
}

class _TopProgramsCardState extends State<TopProgramsCard> {
  late MentorDataSource mentorDataSource;

  @override
  void initState() {
    super.initState();
    mentorDataSource = MentorDataSource(getMentorData());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
                      children: [
                        CustomColorContainer(),
                        const SizedBox(width: 10),
                        Row(
                          children: [
                            const Text(
                              "Top Program",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff18283D),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 12,
                              width: 12,
                              child: Image.asset(
                                "assets/edit 3.png",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffDFEDFF),
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            minimumSize: const Size(77, 40)),
                        child: const Text(
                          "View All",
                          style:
                              TextStyle(color: Color(0xff18283D), fontSize: 12),
                        ))
                  ],
                ),
                CustomDivider(),
                const SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: 1000,
                      child: SfDataGrid(
                        source: mentorDataSource,
                        columnWidthMode: ColumnWidthMode.fill,
                        gridLinesVisibility: GridLinesVisibility.horizontal,
                        headerGridLinesVisibility:
                            GridLinesVisibility.horizontal,
                        columns: <GridColumn>[
                          GridColumn(
                              columnName: 'name',
                              label: _buildHeaderCell('Program Name')),
                          GridColumn(
                              columnName: 'category',
                              label: _buildHeaderCell('Category')),
                          GridColumn(
                              columnName: 'createdBy',
                              label: _buildHeaderCell('Created  By')),
                          GridColumn(
                              columnName: 'email',
                              label: _buildHeaderCell('Email')),
                          GridColumn(
                              columnName: 'view',
                              label: _buildHeaderCell('View')),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCell(String title) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.centerLeft,
      color: const Color(0xffD9E4F2),
      child: Text(
        title,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class Mentor {
  Mentor(this.name, this.category, this.createdBy, this.email);

  final String name;
  final String category;
  final String createdBy;
  final String email;
}

class MentorDataSource extends DataGridSource {
  MentorDataSource(List<Mentor> mentors) {
    _mentors = mentors
        .map<DataGridRow>((mentor) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: mentor.name),
              DataGridCell<String>(
                  columnName: 'category', value: mentor.createdBy),
              DataGridCell<String>(
                  columnName: 'createdBy', value: mentor.createdBy),
              DataGridCell<String>(columnName: 'email', value: mentor.email),
              DataGridCell<Widget>(
                  columnName: 'view', value: const Icon(Icons.remove_red_eye)),
            ]))
        .toList();
  }

  List<DataGridRow> _mentors = [];

  @override
  List<DataGridRow> get rows => _mentors;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((cell) {
        if (cell.columnName == 'view') {
          return Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined,
                    color: Colors.black),
                onPressed: () {},
              ),
            ),
          );
        } else {
          return Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(cell.value.toString()),
          );
        }
      }).toList(),
    );
  }
}

List<Mentor> getMentorData() {
  return [
    Mentor(
        "Leadership Growth", "Engineer", "(202) 555-0191", "johnk@gmail.com"),
    Mentor("Tech Mentorship", "Doctor", "(303) 555-0123", "jenny@gmail.com"),
    Mentor("Career Guidance", "Artist", "(404) 555-0145", "thomas@gmail.com"),
    Mentor("Business Skills", "Chef", "(505) 555-0167", "miller@gmail.com"),
    Mentor("Soft Skills", "Teacher", "(606) 555-0189", "jason@gmail.com"),
  ];
}
