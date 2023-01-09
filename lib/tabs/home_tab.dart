import 'dart:developer' as dev;
import 'package:tabsample/widgets/custom_action_bar.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  _HomeTab createState() => _HomeTab();
}

class _HomeTab extends State<HomeTab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          CustomActionBar(
              title: "Winners", hasTitle: true, hasBackArrow: false),
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 45,
                        child: Image.asset(
                          'assests/person.png',
                          height: 55,
                          width: 55,
                          fit: BoxFit.contain,
                        ), //Text/CircleAvatarCenter
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                ),
              ),
              Container(
                height: 510,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Row(
                            children: [
                              Text(
                                "${index+1}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.cyan,
                                radius: 14,
                                child: Image.asset(
                                  'assests/person.png',
                                  height: 14,
                                  width: 14,
                                  fit: BoxFit.contain,
                                ), //Text/CircleAvatarCenter
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                "Rajendra Jung Kunwar",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "380$index Pts",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
