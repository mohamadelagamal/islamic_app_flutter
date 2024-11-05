import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/bottom_nav_cubit/bottom_nav_cubit.dart';
import '../../../../features/quran/ui/screen/quran_screen.dart';
import '../../../../features/hadith/ui/screen/hadith_screen.dart';
import '../../../../features/tasbeeh/ui/screen/tasbeeh_screen.dart';
import '../../../../features/radio/ui/screen/radio_screen.dart';
import '../../../../features/setting/ui/screen/setting_screen.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  static const Map<BottomNavPage, Widget> _pages = {
    BottomNavPage.quran: QuranScreen(),
    BottomNavPage.hadith: HadithScreen(),
    BottomNavPage.tasbeeh: TasbeehScreen(),
    BottomNavPage.radio: RadioScreen(),
    BottomNavPage.setting: SettingScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavPage>(
      builder: (context, state) {
        return _pages[state]!;
      },
    );
  }
}