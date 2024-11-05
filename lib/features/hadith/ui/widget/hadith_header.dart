import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';


class HadithHeader extends StatelessWidget {
  const HadithHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Text(context.locIntl.islamicTitle, style: TextStyles.font24BlackBold(context)),
        Center(child: Image.asset(Assets.imagesHadethLogo)),
        SizedBox(height: 10.h),
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
                  child: Text(context.locIntl.hadithIconTitle, style: TextStyles.font20BlackRegular(context)),
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
