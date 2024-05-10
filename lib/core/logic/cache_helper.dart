import 'package:shared_preferences/shared_preferences.dart';

class CachHelper {
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get isAuth {
    return _prefs.getBool("isAuth") ?? false;
  }
  static String get password {
    return _prefs.getString("password") ??"";
  }
  static String get fcmToken {
    return _prefs.getString("fcmToken") ??"";
  }
  static String get phone {
    return _prefs.getString("phone") ??"";
  }
  static setIsAuth() async {
    return _prefs.setBool("isAuth", true);
  }

  static setPassword(String value) async {
    await _prefs.setString("password", value);
  }

  static setPhone(String value) async {
    await _prefs.setString("phone", value);
  }
  static setFCMToken(String value) async {
    await _prefs.setString("fcmToken", value);
  }

  static setName(String value) async {
    await _prefs.setString("name", value);
  }

  static setCountry(String value) async {
    await _prefs.setString("country", value);
  }

  static logout() async {
    await _prefs.remove("isAuth");
  }
}
