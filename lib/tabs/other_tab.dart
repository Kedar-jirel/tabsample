import 'package:tabsample/widgets/custom_action_bar.dart';
import 'package:flutter/material.dart';

class OtherTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Text("Other Page"),
            ),
            CustomActionBar(
              hasTitle: true,
              title: "Others",
              hasBackArrow: true,
            ),
          ],
        ),
      ),
    );
  }
}
