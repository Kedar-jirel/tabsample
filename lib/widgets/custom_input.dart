import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../utils/constants.dart';

class CustomInput extends StatelessWidget {

final String hintText;
final Function(String) onChanged;
final Function(String) onSubmitted;
final FocusNode focusNode;
final TextInputAction textInputAction;
final bool isPasswordField;
final GlobalKey emailKey;
final GlobalKey passKey;
final GlobalKey nameKey;

CustomInput({this.hintText ='',required this.onChanged,required this.onSubmitted,required this.focusNode,this.textInputAction = TextInputAction.done,this.isPasswordField = false, required this.emailKey, required this.passKey, required this.nameKey});


  @override
  Widget build(BuildContext context) {

    bool _isPasswordField = isPasswordField ?? false;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 24.0,
      ),

      child: Center(
        child: Form(
          key: nameKey ?? emailKey ?? passKey,
          child: Column(
            children: [
              TextFormField(
                obscureText: _isPasswordField,
                  focusNode: focusNode,
                  onChanged: onChanged,
                  onFieldSubmitted: onSubmitted,
                  textInputAction: textInputAction,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                    labelText: hintText ?? " Hint Text..",
                    // labelStyle: TextStyle(
                    //     color: Colors.white,
                    // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 1.0),
                  ),
                  border: const OutlineInputBorder(),
                  labelStyle: new TextStyle(color: Colors.white),
                ),
                validator: RequiredValidator(errorText: "required"),

              )
            ],
          ),

        ),
      ),
    );
  }
}
