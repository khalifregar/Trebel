import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// ✅ Simpan nilai string ke SharedPreferences
Future<bool> setStringValuePreference({
  required String key,
  required String value,
}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString(key, value);
    return result;
  } catch (e) {
    return false;
  }
}

/// ✅ Ambil nilai string dari SharedPreferences
Future<String?> getStringValuePreference({required String key}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final val = prefs.getString(key);
    return val;
  } catch (e) {
    return null;
  }
}

/// ✅ Hapus nilai dari SharedPreferences
Future<bool> removeValuePreference({required String key}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final removed = await prefs.remove(key);
    return removed;
  } catch (e) {
    return false;
  }
}
