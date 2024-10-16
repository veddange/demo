import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utility {
  static Future setValues({required String key, required String value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isSave = await prefs.setString(key, value);

    if (isSave) {
      debugPrint('Save');
      debugPrint(isSave.toString());
    }
  }

  static Future getValues({required String key}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(key);
    debugPrint("$key:$value");
    return value;
  }

  static Future removeValue(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isRemove = await prefs.remove(key);
      
    if (isRemove){
      debugPrint("Key Removed $key:$isRemove");
      debugPrint(isRemove.toString());
    }
  }
}
