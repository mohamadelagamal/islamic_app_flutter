import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';
import '../../logic/cubit/radio_cubit.dart';
import '../../../quran/ui/widget/quran_background.dart';
import '../widget/radio_controls.dart';
import '../widget/radio_header.dart';
import '../widget/radio_image.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RadioCubit(getIt())..loadRadios(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const RadioHeader(),
                    const RadioImage(),
                    const RadioControls(),
                    SizedBox(height: 30.h),
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