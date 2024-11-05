import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../quran/ui/widget/quran_background.dart';
import '../../../logic/cubit/hadith_details/hadith_details_cubit.dart';
import '../../widget/hadith_details_widget/hadith_details_container.dart';
import '../../widget/hadith_details_widget/hadith_details_header.dart';

class HadithDetailsScreen extends StatelessWidget {
  final int index;
  final String hadithName;
  const HadithDetailsScreen({super.key, required this.index, required this.hadithName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HadithDetailsCubit()..loadHadithData(index),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(15),
                    HadithDetailsHeader(),
                    verticalSpace(40),
                    HadithDetailsContainer(hadithName: hadithName),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}