import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_c4/core/theming/colors.dart';
import 'package:islamic_c4/core/theming/styles.dart';
import '../../logic/cubit/tasbeeh_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasbeehButton extends StatelessWidget {
  const TasbeehButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<TasbeehCubit>().increment(),
          child: Container(
            width: 120.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: ColorsManager.camelBrown,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Center(
              child: Text(state.buttonText, style: TextStyles.font20WhiteMedium),
            ),
          ),
        );
      },
    );
  }
}