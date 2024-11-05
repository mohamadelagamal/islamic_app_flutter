part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

final class ProfileThemeModeChanged extends ThemeState {
  final bool isDarkMode;
  ProfileThemeModeChanged(this.isDarkMode);
}

final class ProfileFailedToChangeThemeMode extends ThemeState {
  final String error;
  ProfileFailedToChangeThemeMode(this.error);
}

final class ChangeLanguageSuccess extends ThemeState {}
