import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/styles.dart';
import '../../../logic/cubit/quran_screen_details/quran_screen_details_cubit.dart';

class QuranText extends StatelessWidget {
  const QuranText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranScreenDetailsCubit, String>(
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