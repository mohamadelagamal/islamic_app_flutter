part of 'setting_cubit.dart';

@immutable
sealed class SettingState {}

final class SettingInitial extends SettingState {}

class SettingLanguageChanged extends SettingState {
  final String language;
  SettingLanguageChanged(this.language);
}

class SettingThemeChanged extends SettingState {
  final String theme;
  SettingThemeChanged(this.theme);
}