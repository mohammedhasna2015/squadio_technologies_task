import 'dart:async' show Future;
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static const String PREF_CACHE_TIME = 'cachedPeople';

  static Future<SharedPreferences> get _instance async =>
      prefs ??= await SharedPreferences.getInstance();
  static SharedPreferences? prefs;

  static Future<SharedPreferences> init() async {
    prefs = await _instance;
    return prefs!;
  }

  static String getPrefString(String key) {
    return prefs!.getString(key) ?? '';
  }

  static Future<int> getPrefInt(String key) async {
    final SharedPreferences prefs = await _instance;
    return prefs.getInt(key) ?? 0;
  }

  static Future<bool> setPrefInt(String key, int value) async {
    var prefs = await _instance;
    return prefs.setInt(key, value);
  }

  static Future<bool> setPrefString(String key, String value) async {
    final prefs = await _instance;
    return prefs.setString(key, value);
  }

  static Future<bool> setPrefBool(String key, bool value) async {
    var prefs = await _instance;
    return prefs.setBool(key, value);
  }

  static bool getPrefBool(String key) {
    return prefs!.getBool(key) ?? true;
  }

  static Future<void> clearAllPreferences() async {
    prefs!.clear();
  }

}
