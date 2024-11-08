import 'package:shared_preferences/shared_preferences.dart';

class CashHelperSharedPreferences {
  static SharedPreferences? sharedPreferences;

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<dynamic> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (sharedPreferences == null) {
      await init();
    }
    if (value is String) {
      return await sharedPreferences!.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences!.setInt(key, value);
    } else if (value is bool) {
      return await sharedPreferences!.setBool(key, value);
    } else if (value is double) {
      return await sharedPreferences!.setDouble(key, value);
    } else if (value is List<String>) {
      return await sharedPreferences!.setStringList(key, value);
    }
  }

  Future<dynamic> getData({
    required String key,
  }) async{
    if (sharedPreferences == null) {
      await init();
    }
    return sharedPreferences?.get(key);
  }

  Future<dynamic> removeData({
    required dynamic key,
  }) async {
    return await sharedPreferences?.remove(key);
  }

  Future<dynamic> clearData() async {
    return await sharedPreferences?.clear();
  }
}
