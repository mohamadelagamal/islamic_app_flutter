import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import '../../../../core/theming/styles.dart';

class RadioHeader extends StatelessWidget {
  const RadioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Text(context.locIntl.islamicTitle, style: TextStyles.font24BlackBold(context)),
        SizedBox(height: 150.h),
      ],
    );
  }
}
