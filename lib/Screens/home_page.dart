import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_dashboard/Screens/dashboard_page.dart';
import 'package:interview_dashboard/Screens/programs_page.dart';
import 'package:interview_dashboard/Screens/request_page.dart';
import 'package:interview_dashboard/Screens/users_page.dart';
import 'package:interview_dashboard/Widgets/custom_drawer.dart';
import '../Widgets/custom_appbar.dart';
import '../Widgets/custom_navigationbar.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}

class HomePage extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> pages = [
    DashboardPage(),
    ProgramsPage(),
    UsersPage(),
    RequestPage()
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(scaffoldKey: _scaffoldKey),
      ),
      endDrawer: CustomDrawer(),
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(child: Obx(() => pages[controller.selectedIndex.value])),
      bottomNavigationBar: CustomBottomNavicationBar(controller: controller),
    );
  }
}
