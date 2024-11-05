import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../generated/assets.dart';
import '../../logic/cubit/radio_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioImage extends StatelessWidget {
  const RadioImage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RadioCubit>().state;
    final radioName = state is RadioLoaded ? state.radioName : '';

    return Column(
      children: [
        Center(child: Image.asset(Assets.imagesRadioImage)),
        SizedBox(height: 30.h),
        Text(radioName, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold)),
        SizedBox(height: 30.h),
      ],
    );
  }
}
