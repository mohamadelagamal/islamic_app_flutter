// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Quran`
  String get quranIconTitle {
    return Intl.message(
      'Quran',
      name: 'quranIconTitle',
      desc: '',
      args: [],
    );
  }

  /// `Read the Quran`
  String get quranIconSubtitle {
    return Intl.message(
      'Read the Quran',
      name: 'quranIconSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Read the Quran`
  String get quranIconDescription {
    return Intl.message(
      'Read the Quran',
      name: 'quranIconDescription',
      desc: '',
      args: [],
    );
  }

  /// `Name of the Sura`
  String get nameSura {
    return Intl.message(
      'Name of the Sura',
      name: 'nameSura',
      desc: '',
      args: [],
    );
  }

  /// `Number of Ayah`
  String get numberOfAyah {
    return Intl.message(
      'Number of Ayah',
      name: 'numberOfAyah',
      desc: '',
      args: [],
    );
  }

  /// `Number of Sura`
  String get numberOfSura {
    return Intl.message(
      'Number of Sura',
      name: 'numberOfSura',
      desc: '',
      args: [],
    );
  }

  /// `Islamic`
  String get islamicTitle {
    return Intl.message(
      'Islamic',
      name: 'islamicTitle',
      desc: '',
      args: [],
    );
  }

  /// `Hadith`
  String get hadithIconTitle {
    return Intl.message(
      'Hadith',
      name: 'hadithIconTitle',
      desc: '',
      args: [],
    );
  }

  /// `Read the Hadith`
  String get hadithIconSubtitle {
    return Intl.message(
      'Read the Hadith',
      name: 'hadithIconSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Hadith`
  String get hadithList {
    return Intl.message(
      'Hadith',
      name: 'hadithList',
      desc: '',
      args: [],
    );
  }

  /// `Tasbeeh`
  String get tasbehIconTitle {
    return Intl.message(
      'Tasbeeh',
      name: 'tasbehIconTitle',
      desc: '',
      args: [],
    );
  }

  /// `Number of Tasbeeh`
  String get numberOfTasbeeh {
    return Intl.message(
      'Number of Tasbeeh',
      name: 'numberOfTasbeeh',
      desc: '',
      args: [],
    );
  }

  /// `Radio`
  String get radioIconTitle {
    return Intl.message(
      'Radio',
      name: 'radioIconTitle',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsIconTitle {
    return Intl.message(
      'Settings',
      name: 'settingsIconTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select Theme`
  String get selectTheme {
    return Intl.message(
      'Select Theme',
      name: 'selectTheme',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Number of Hadith`
  String get numberOfHadith {
    return Intl.message(
      'Number of Hadith',
      name: 'numberOfHadith',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
