import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import '../../../quran/ui/widget/quran_background.dart';
import '../../../quran/ui/widget/quran_header.dart';
import '../../logic/cubit/hadith_cubit.dart';
import '../widget/hadith_header.dart';
import '../widget/hadith_list_item.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => HadithCubit(),
      child: Scaffold(

        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const HadithHeader(),

                    BlocBuilder<HadithCubit, HadithState>(
                      builder: (context, state) {
                        final cubit = HadithCubit.get(context);
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return HadithListItem(
                              index: index+1,
                              hadithName: ' ${context.locIntl.numberOfHadith} ${(index + 1)}',
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
