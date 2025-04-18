import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setStringValuePreference({
  required String key,
  required String value,
}) async {
  final prefs = await SharedPreferences.getInstance();
  final result = await prefs.setString(key, value);
  debugPrint('📥 SET [$key] = $value => Result: $result');
}

Future<String?> getStringValuePreference({required String key}) async {
  final prefs = await SharedPreferences.getInstance();
  final val = prefs.getString(key);
  debugPrint('📤 GET [$key] = $val');
  return val;
}

Future<void> removeValuePreference({required String key}) async {
  final prefs = await SharedPreferences.getInstance();
  final removed = await prefs.remove(key);
  debugPrint('🗑 REMOVE [$key] => Result: $removed');
}
