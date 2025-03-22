import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset("assets/basil_document-outline.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Text("Comming Soon",style: TextStyle(color: Color(0xff18283D),fontSize: 14),)
          ],
        ),
      ),
    );
  }
}