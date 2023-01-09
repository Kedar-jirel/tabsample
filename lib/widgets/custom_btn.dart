import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {

  final String text;
  final VoidCallback? onPressed;
  final bool outlineBtn;
  final bool isLoading;

  CustomBtn({this.text ='', this.onPressed, this.outlineBtn = false ,this.isLoading = false});


  @override
  Widget build(BuildContext context) {

    bool _outlineBtn = outlineBtn ?? false;
    bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: _outlineBtn ? Colors.transparent : Colors.transparent,
          border: Border.all(
            color: Theme.of(context).accentColor,
            width: 2.0,
          ),
              borderRadius: BorderRadius.circular(20.0,),


        ),

        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Center(
                child: Text(
                    text ?? "text",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: _outlineBtn ? Colors.white : Colors.white,
                ),
                ),
              ),
            ),
            Visibility(
              visible: _isLoading,
              child: Center(
                child: SizedBox(
                  height: 15.0,
                  width: 15.0,
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
