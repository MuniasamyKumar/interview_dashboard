import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
   final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
          CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            
            Spacer(),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/search.png', fit: BoxFit.cover),
            ),
            SizedBox(width: 15),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/notification.png', height: 24),
            ),
            SizedBox(width: 15),
            InkWell(
              onTap: () {
                 scaffoldKey.currentState!.openEndDrawer();
              },
              child: Image.asset('assets/menu.png', height: 30)),
          ],
        ),
      ),
    );
  }
}
