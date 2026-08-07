import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setLogin(bool value) async {
    await prefs.setBool('isLogin', value);
  }

  static bool get isLogin {
    return prefs.getBool('isLogin') ?? false;
  }
}
