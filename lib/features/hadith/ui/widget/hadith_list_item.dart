// quran_list_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class HadithListItem extends StatelessWidget {
  final int index;
  final String hadithName;

  const HadithListItem({
    required this.index,
    super.key, required this.hadithName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your logic here
        context.pushNamedWithData(Routes.hadithScreenDetails, arguments: {
          'index': index,
          'hadithName': hadithName,
        });

      },
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(' ${context.locIntl.numberOfHadith} ${(index)}', style: TextStyles.font20BlackRegular(context)),                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}