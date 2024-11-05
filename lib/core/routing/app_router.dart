import 'package:flutter/material.dart';
import 'package:islamic_c4/features/hadith/ui/screen/hadith_screen.dart';
import 'package:islamic_c4/features/quran/ui/screen/quran_details_screen.dart';
import 'package:islamic_c4/features/quran/ui/screen/quran_screen.dart';
import 'package:islamic_c4/features/radio/logic/cubit/radio_cubit.dart';
import 'package:islamic_c4/features/radio/ui/screen/radio_screen.dart';
import 'package:islamic_c4/features/setting/ui/screen/setting_screen.dart';
import 'package:islamic_c4/features/tasbeeh/ui/screen/tasbeeh_screen.dart';
import '../../features/hadith/logic/cubit/hadith_cubit.dart';
import '../../features/hadith/ui/screen/hadith_details_screen/hadith_details_screen.dart';
import '../../features/quran/logic/cubit/quran_cubit.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map<dynamic, dynamic>?;
    switch (settings.name) {
      case Routes.quranScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => getIt<QuranCubit>(),
                child: const QuranScreen()));

      case Routes.hadithScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<HadithCubit>(),
                  child: const HadithScreen(),
                ));

      case Routes.tasbeehScreen:
        return MaterialPageRoute(builder: (_) => const TasbeehScreen());
      case Routes.quranScreenDetails:
        return MaterialPageRoute(
          builder: (context) => QuranDetailsScreen(
            index: args?["index"],
            suraName: args?["suraName"],
          ),
        );
      case Routes.settingScreen:
        return MaterialPageRoute(
          builder: (context) => SettingScreen(),
        );
      case Routes.hadithScreenDetails:
        return MaterialPageRoute(
          builder: (context) => HadithDetailsScreen(
            index: args?["index"],
            hadithName: args?["hadithName"],
          ),
        );
      case Routes.radioScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<RadioCubit>()..loadRadios(),
                  child: const RadioScreen(),
                ));

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR: Route not found or invalid arguments'),
        ),
      ),
    );
  }
}
