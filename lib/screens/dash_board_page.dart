import 'package:tabsample/tabs/home_tab.dart';
import 'package:tabsample/tabs/list_tab.dart';
import 'package:tabsample/tabs/map_tab.dart';
import 'package:tabsample/tabs/other_tab.dart';
import 'package:tabsample/tabs/reports_tab.dart';
import 'package:tabsample/widgets/bottom_tabs.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  late PageController _tabPageController;
  int _selectedTab = 0;


  @override
  void initState() {
    _tabPageController = PageController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _tabPageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: PageView(
                controller: _tabPageController,
                onPageChanged: (num) {
                    setState(() {
                      _selectedTab = num;
                    });

                },
                children: [
                 HomeTab(),
                  MapTab(),
                  ListTab(),
                  ReportTab(),
                  OtherTab(),
                ],
              ),

            ),
          ),
          BottomTabs(
            selectedTab: _selectedTab,
            tabPressed: (num){
              _tabPageController.animateToPage(
                  num,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic);
            },
          ),
        ],
      ),
    );
  }
}
