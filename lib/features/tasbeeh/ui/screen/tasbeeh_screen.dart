import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_c4/features/tasbeeh/logic/cubit/tasbeeh_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../quran/ui/widget/quran_background.dart';
import '../widget/tasbeeh_header.dart';

class TasbeehScreen extends StatelessWidget {
  const TasbeehScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasbeehCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const QuranBackground(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const TasbeehHeader(),
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
