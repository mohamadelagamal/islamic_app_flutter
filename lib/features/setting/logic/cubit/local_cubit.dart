import 'package:bloc/bloc.dart';
import 'package:islamic_c4/core/helpers/constants.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/shared_preferences/shared_preferences.dart';


class LocaleCubit extends Cubit<LocaleState> {
  String currentLocale;

  LocaleCubit({required this.currentLocale}) : super(LocaleState(currentLocale: currentLocale));

  String getCurrentLocaleText() {
    return currentLocale == 'en' ? "English" : "العربيه";
  }

  void changeLocale(String newLocale) {
    Logger().i('new locale is $newLocale');
    getIt.get<CashHelperSharedPreferences>().saveData(
      key: Constants.locale, value: newLocale,
    );
    currentLocale = newLocale;
    emit(LocaleState(currentLocale: newLocale));
  }
}
class LocaleState {
  final String currentLocale;

  LocaleState({required this.currentLocale});
}