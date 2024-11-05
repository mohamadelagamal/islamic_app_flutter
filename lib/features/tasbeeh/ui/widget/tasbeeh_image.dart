import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/tasbeeh_cubit.dart';
import '../../../../generated/assets.dart';

class TasbeehImage extends StatelessWidget {
  const TasbeehImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      builder: (context, state) {
        return Transform.rotate(
          angle: state.rotationAngle,
          child: Image.asset(Assets.imagesBodySebhaLogo),
        );
      },
    );
  }
}