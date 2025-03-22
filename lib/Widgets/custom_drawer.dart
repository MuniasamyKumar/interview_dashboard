import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              "Admin",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4, 4),
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 15),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/profile.png"),
                        ),
                        SizedBox(height: 15),
                        Text("John Doe",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text("Mentor",
                            style: TextStyle(
                                color: Color(0xff232323), fontSize: 14)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomDivider(),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            drawerItem(
                                "assets/calendar_clock.png", "Schedular"),
                            drawerItem("assets/doc.png", "Timesheet"),
                            drawerItem("assets/people.png", "Discussions"),
                            drawerItem("assets/report.png", "Reports"),
                            drawerItem("assets/msg.png", "Feedback"),
                            drawerItem("assets/Medal.png", "Certificates"),
                            drawerItem("assets/doc.png", "Feed"),
                            drawerItem("assets/Vector.png", "Analytics"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(String iconPath, String title) {
    return ListTile(
      leading: Image.asset(iconPath, height: 28),
      title: Text(title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      onTap: () {},
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xffD9D9D9),
      // indent: 10,
      // endIndent: 10,
    );
  }
}
