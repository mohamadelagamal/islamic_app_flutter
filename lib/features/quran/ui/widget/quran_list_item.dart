// quran_list_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import 'package:islamic_c4/core/routing/routes.dart';
import 'package:islamic_c4/core/theming/styles.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';

import '../screen/quran_details_screen.dart';

class QuranListItem extends StatelessWidget {
  final int index;
  final int ayahNumber;
  final String suraName;

  const QuranListItem({
    required this.ayahNumber,
    required this.suraName,
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamedWithData(Routes.quranScreenDetails, arguments: {
          'index': index,
          'suraName': suraName,
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
                    child: Text(suraName, style: TextStyles.font20BlackRegular(context)),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text((ayahNumber + 1).toString(),
                        style: TextStyles.font20BlackRegular(context)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
