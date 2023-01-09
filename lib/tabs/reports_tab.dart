import 'package:tabsample/widgets/custom_action_bar.dart';
import 'package:flutter/material.dart';

class ReportTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Text("Report Page"),
            ),
            CustomActionBar(
              hasTitle: true,
              title: "Reports",
              hasBackArrow: true,
            ),
          ],
        ),
      ),
    );
  }
}
