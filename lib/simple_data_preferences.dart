import 'package:shared_preferences/shared_preferences.dart';

class SimpleDataPreference {
  // ignore: unused_field
  static SharedPreferences? _preference;
  static const _keyname = 'name';
  static const _keyage = 'age';
  static Future init() async =>
      _preference = await SharedPreferences.getInstance();

  static Future setname(String name) async {
    await _preference?.setString(_keyname, name);
  }

  static String? getname() => _preference?.getString(_keyname);
  static Future setage(String age) async {
    await _preference?.setString(_keyage, age);
  }

  static String? getage() => _preference?.getString(_keyage);
}
