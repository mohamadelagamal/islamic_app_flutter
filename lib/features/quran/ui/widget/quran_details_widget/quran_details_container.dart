import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/assets.dart';
import 'quran_text.dart';

class QuranDetailsContainer extends StatelessWidget {
  final String suraName;
  const QuranDetailsContainer({super.key, required this.suraName});

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
              Text(suraName, style: TextStyles.font25BlackRegular(context)),
              horizontalSpace(5),
              InkWell(
                onTap: () {
                  //context.read<QuranScreenDetailsCubit>().playSurah();
                },
                child: SizedBox(
                  width: 28.w,
                  height: 28.h,
                  child: Image.asset(Assets.imagesAwesomePlay),
                ),
              ),
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
            child: QuranText(),
          ),
        ],
      ),
    );
  }
}