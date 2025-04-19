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
    debugPrint('📥 SET [$key] = $value => Result: $result');
    return result;
  } catch (e) {
    debugPrint('❌ Failed to save [$key] => $e');
    return false;
  }
}

/// ✅ Ambil nilai string dari SharedPreferences
Future<String?> getStringValuePreference({required String key}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final val = prefs.getString(key);
    debugPrint('📤 GET [$key] = $val');
    return val;
  } catch (e) {
    debugPrint('❌ Failed to get [$key] => $e');
    return null;
  }
}

/// ✅ Hapus nilai dari SharedPreferences
Future<bool> removeValuePreference({required String key}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final removed = await prefs.remove(key);
    debugPrint('🗑 REMOVE [$key] => Result: $removed');
    return removed;
  } catch (e) {
    debugPrint('❌ Failed to remove [$key] => $e');
    return false;
  }
}
