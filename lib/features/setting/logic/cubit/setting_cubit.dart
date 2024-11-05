import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:islamic_c4/core/di/dependency_injection.dart';
import 'package:islamic_c4/core/helpers/constants.dart';
import 'package:islamic_c4/core/shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingInitial()) {
    _loadLanguage();
  }

  void setLanguage(String language) async {
    isEnglish = !isEnglish;
    emit(SettingLanguageChanged(language));
    // Save the updated language preference.
    getIt
        .get<CashHelperSharedPreferences>()
        .saveData(
          key: Constants.isEnglishKey,
          value: isEnglish,
        )
        .then((value) {
      if (kDebugMode) {
        print(isEnglish);
      }
    });
    // final prefs = await SharedPreferences.getInstance();

    // if (language == 'English' || language == 'الإنجليزية') {
    //   await prefs.setString('language', 'English');
    // }

    // if (language == 'العربية' || language == 'Arabic') {
    //   await prefs.setString('language', 'Arabic');
    // }
    // emit(SettingLanguageChanged(language));
  }

  void _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final language = prefs.getString('language') ?? 'English';
    emit(SettingLanguageChanged(language));
  }
}
