// quran_screen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/quran_cubit.dart';
import '../widget/quran_background.dart';
import '../widget/quran_header.dart';
import '../widget/quran_list_item.dart';


class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const QuranHeader(),
                    BlocBuilder<QuranCubit, QuranState>(
                      builder: (context, state) {
                        final cubit = QuranCubit.get(context);
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: cubit.suraNames.length,
                          itemBuilder: (context, index) {
                            return QuranListItem(
                              index: index + 1,
                              ayahNumber: cubit.ayahCounts[index] - 1,
                              suraName: cubit.suraNames[index],
                            );
                          },
                        );
                      },
                    ),
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