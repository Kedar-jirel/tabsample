import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPref {
   // final SharedPreferences _preferences;
    String USER_DETAILS = "USER_DETAILS";

  // SharedPref(this._preferences);




  // final prefs = await SharedPreferences.getInstance();


  read(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return json.decode(_preferences.getString(key));
  }

  save(String userDetails, USER_DETAILS) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString(userDetails, json.encode(USER_DETAILS));
  }

  remove(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove(key);
  }
}