import 'package:flutter/material.dart';


class CustomActionBar extends StatelessWidget {
  final String title;
  final bool hasBackArrow;
  final bool hasTitle;
  final bool hasBackground;

  CustomActionBar(
      {required this.title, required this.hasBackArrow, required this.hasTitle,  this.hasBackground = false});

  @override
  Widget build(BuildContext context) {
    bool _hasTitle = hasTitle;
    bool _hasBackArrow = hasBackArrow;
    bool _hasBackground = hasBackground;
    return Container(
      decoration: BoxDecoration(
          gradient: _hasBackground
              ? LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.grey.withOpacity(1.0),
                  ],
                  begin: Alignment(0, 0),
                  end: Alignment(0, 1),
                )
              : null),
      padding:
          EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
              child: Container(
                height: 30,
                width: double.infinity,
            alignment: Alignment.topLeft,
            child:  Text(
              title,
              style: TextStyle(
                  fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          )),


          SizedBox(
            height: 0,
            width: 100,
            child: Center(
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (BuildContext context) {  }
              //         // builder: (context) => notification,search&profille(),
              //         ));
            },
            child: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8.0)),
                alignment: Alignment.center,
                child: Icon(
                  Icons.person_add_alt_sharp,
                ),
            ),
          ),
          SizedBox(
            height: 0,
            width: 30,
            child: Center(
            ),
          ),

          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => notification,search&profille(),
              //     ));
            },
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8.0)),
              alignment: Alignment.center,
              child: Icon(
                Icons.search,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
