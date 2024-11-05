import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/constants.dart';
import '../../../../../core/shared_preferences/shared_preferences.dart';


part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  ThemeCubit get(context) => BlocProvider.of(context);

  bool themeMode = false;

  void setThemeMode() async {
    try {
      isDark = !isDark!;
      isDarkNotifier.value = !isDarkNotifier.value;
      await getIt.get<CashHelperSharedPreferences>().saveData(
        key: Constants.themeKey,
        value: isDark,
      );
      emit(ProfileThemeModeChanged(isDark!));
    } catch (e) {
      emit(ProfileFailedToChangeThemeMode(e.toString()));
    }
  }

}
