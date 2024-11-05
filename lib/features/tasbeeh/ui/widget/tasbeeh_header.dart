import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import 'package:islamic_c4/core/theming/colors.dart';
import 'package:islamic_c4/core/theming/styles.dart';
import '../../../../generated/assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/tasbeeh_cubit.dart';
import 'tasbeeh_button.dart';
import 'tasbeeh_image.dart';

class TasbeehHeader extends StatelessWidget {
  const TasbeehHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        Center(child: Text(context.locIntl.islamicTitle, style: TextStyles.font24BlackBold(context))),
        SizedBox(height: 100.h),
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          fit: StackFit.loose,
          children: [
            Positioned(
              top: -71.h,
              child: Image.asset(Assets.imagesHeadSebhaLogo),
            ),
            const Positioned(
              child: TasbeehImage(),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Text(context.locIntl.numberOfTasbeeh, style: TextStyles.font24BlackBold(context)),
        SizedBox(height: 20.h),
        BlocBuilder<TasbeehCubit, TasbeehState>(
          builder: (context, state) {
            return Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: ColorsManager.camelBrown,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text('${state.pressCount}', style: TextStyles.font20WhiteMedium),
              ),
            );
          },
        ),
        SizedBox(height: 30.h),
        const TasbeehButton(),
      ],
    );
  }
}