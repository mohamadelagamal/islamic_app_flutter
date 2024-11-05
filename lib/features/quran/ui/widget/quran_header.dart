// quran_header.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import 'package:islamic_c4/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';

class QuranHeader extends StatelessWidget {
  const QuranHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Text(context.locIntl.islamicTitle, style: TextStyles.font24BlackBold(context),),
        Center(child: Image.asset(Assets.imagesQuranScreenLogo)),
        SizedBox(height: 20.h),
        Container(
          height: 2,
          width: double.infinity,
          color: ColorsManager.camelBrown,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50.h,
                child: Center(
                  child: Text(context.locIntl.nameSura, style: TextStyles.font20BlackRegular(context)),
                ),
              ),
            ),

            Container(
              height: 50.h,
              width: 2,
              color: ColorsManager.camelBrown,
            ),
            Expanded(
              child: Container(
                height: 50.h,
                child: Center(
                  child: Text(context.locIntl.numberOfAyah, style: TextStyles.font20BlackRegular(context)),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: ColorsManager.camelBrown,
        ),
      ],
    );
  }
}