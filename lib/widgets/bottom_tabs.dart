import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabPressed;

  BottomTabs({required this.selectedTab, required this.tabPressed});

  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _isSelectedTab = 0;

  @override
  Widget build(BuildContext context) {
    _isSelectedTab = widget.selectedTab;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1.0,
              blurRadius: 30.0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomTabBtn(
            icon: Icon(
              Icons.home_filled,
              size: 25,
            ),
            isSelected: _isSelectedTab == 0 ? true : false,
            onPressed: () {
              widget.tabPressed(0);
            },
          ),
          BottomTabBtn(
            icon: Icon(
              Icons.av_timer,
              size: 25,
            ),
            isSelected: _isSelectedTab == 1 ? true : false,
            onPressed: () {
              widget.tabPressed(1);
            },
          ),
          BottomTabBtn(
            icon: Icon(
              Icons.image,
              size: 25,
            ),
            image: '',
            isSelected: _isSelectedTab == 2 ? true : false,
            onPressed: () {
              widget.tabPressed(2);
            },
          ),
          BottomTabBtn(
            icon: Icon(
              Icons.bar_chart,
              size: 25,
            ),
            isSelected: _isSelectedTab == 3 ? true : false,
            onPressed: () {
              widget.tabPressed(3);
            },
          ),
          BottomTabBtn(
            icon: Icon(
              Icons.notifications,
              size: 25,
            ),
            isSelected: _isSelectedTab == 4 ? true : false,
            onPressed: () {
              widget.tabPressed(4);
            },
          ),
        ],
      ),
    );
  }
}

class BottomTabBtn extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final Icon icon;
  final String? image;

  BottomTabBtn({  this.isSelected = false,required this.onPressed, required this.icon,this.image});

  @override
  Widget build(BuildContext context) {
    bool _isSelected = isSelected;
    if(image!=null){
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                    color:
                    _isSelected ? Theme.of(context).accentColor : Colors.transparent,
                    width: 2.0,
                  ))),
          child:CircleAvatar(
            backgroundColor: Colors.cyan,
            radius: 14,
            child: Image.asset(
              'assests/person.png',
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ), //Text/CircleAvatarCenter
          ),
        ),
      );

    }else{
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                    color:
                    _isSelected ? Theme.of(context).accentColor : Colors.transparent,
                    width: 2.0,
                  ))),
          child:icon,

        ),
      );
    }
  }
}
