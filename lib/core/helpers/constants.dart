import 'package:flutter/cupertino.dart';
import 'package:islamic_c4/generated/l10n.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../di/dependency_injection.dart';
import '../shared_preferences/shared_preferences.dart';


abstract class Constants {
  static String loginUserData = "onBoarding";
  static String isEnglishKey = "isEnglish";
  static String locale = "locale";
  static String isDark = "false";
  static const String themeKey = "theme";

}

bool isEnglish = false;
Future<void> getThemeMode() async {
  isDark= await getIt.get<CashHelperSharedPreferences>().getData(key: Constants.themeKey) ?? false;
  // Logger().i(' result is $isDark');
  isDarkNotifier.value=isDark;
  isDark = await getIt
      .get<CashHelperSharedPreferences>()
      .getData(key: Constants.themeKey) ??
      false;
  Logger().i(' result is $isDark');
}

bool isDark = false;
ValueNotifier<bool> isDarkNotifier = ValueNotifier<bool>(false);
