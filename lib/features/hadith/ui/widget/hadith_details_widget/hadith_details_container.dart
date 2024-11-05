import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import 'hadith_text.dart';

class HadithDetailsContainer extends StatelessWidget {
  final String hadithName;
  const HadithDetailsContainer({super.key, required this.hadithName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 670.h,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(hadithName, style: TextStyles.font25BlackRegular(context)),
            ],
          ),
          verticalSpace(15),
          Container(
            height: 2.h,
            width: 200.w,
            color: ColorsManager.camelBrown,
          ),
          verticalSpace(15),
          const Expanded(
            child: HadithText(),
          ),
        ],
      ),
    );
  }
}