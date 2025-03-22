import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_dashboard/Screens/home_page.dart';

class CustomBottomNavicationBar extends StatelessWidget {
  const CustomBottomNavicationBar({
    super.key,
    required this.controller,
  });

  final BottomNavController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changeIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black87,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/dashboard.png', height: 24),
            activeIcon: Image.asset('assets/dashboard_active.png', height: 24),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/calender.png', height: 24),
            activeIcon: Image.asset('assets/calender_active.png', height: 24),
            label: "Programs",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/user.png', height: 24),
            activeIcon: Image.asset('assets/user.png', height: 24),
            label: "Users",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/basil_document-outline.png', height: 24),
            activeIcon:
                Image.asset('assets/basil_document-outline.png', height: 24),
            label: "Requests",
          ),
        ],
      ),
    );
  }
}
