import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/styles.dart';
import '../../../logic/cubit/hadith_details/hadith_details_cubit.dart';

class HadithText extends StatelessWidget {
  const HadithText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HadithDetailsCubit, String>(
      builder: (context, surahText) {
        if (surahText.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            surahText,
            style: TextStyles.font18BlackThin(context),
          ),
        );
      },
    );
  }
}