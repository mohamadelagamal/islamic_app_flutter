import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import 'package:islamic_c4/core/helpers/spacing.dart';
import 'package:islamic_c4/features/setting/logic/cubit/setting_cubit.dart';
import '../../../../core/theming/styles.dart';
import '../../../quran/ui/widget/quran_background.dart';
import '../widget/language_dropdown.dart';
import '../widget/theme_dropdown.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Text(context.locIntl.islamicTitle, style: TextStyles.font24BlackBold(context),),

                    verticalSpace(100),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LanguageBottomSheet(),
                          SizedBox(height: 20),
                          ThemeBottomSheet(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}