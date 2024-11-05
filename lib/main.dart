import 'package:flutter/material.dart';
import 'package:islamic_c4/core/helpers/constants.dart';
import 'package:islamic_c4/core/shared_preferences/shared_preferences.dart';
import 'package:islamic_c4/islam_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/di/dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/my_bloc_observer.dart';

void main() async {
  setUpGetIt();
  // new
  await ScreenUtil.ensureScreenSize();
  //await checkIfLoggedInUser();
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  String? locale = await getIt.get<CashHelperSharedPreferences>().getData(
    key: Constants.locale,
  );
  getThemeMode();


  runApp(IslamApp(locale: locale??'en'));
}
