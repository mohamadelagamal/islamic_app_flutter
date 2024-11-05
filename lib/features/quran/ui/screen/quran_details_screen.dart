import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/cubit/quran_screen_details/quran_screen_details_cubit.dart';
import '../widget/quran_background.dart';
import '../widget/quran_details_widget/quran_details_container.dart';
import '../widget/quran_details_widget/quran_details_header.dart';

class QuranDetailsScreen extends StatelessWidget {
  final int index;
  final String suraName;

  const QuranDetailsScreen({super.key, required this.index, required this.suraName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranScreenDetailsCubit()..loadSurahData(index),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(15),
                    const QuranDetailsHeader(),
                    verticalSpace(40),
                    QuranDetailsContainer(suraName: suraName),
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