import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../generated/assets.dart';
import '../../logic/cubit/radio_cubit.dart';

class RadioControls extends StatefulWidget {
  const RadioControls({super.key});

  @override
  _RadioControlsState createState() => _RadioControlsState();
}

class _RadioControlsState extends State<RadioControls> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: IconButton(
                onPressed: () {
                  if (isPlaying) {
                    context.read<RadioCubit>().previousRadio();
                  }
                },
                icon: Image.asset(Assets.imagesMetroBack),
              ),
            ),
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: IconButton(
                onPressed: () {
                  if (isPlaying) {
                    context.read<RadioCubit>().stopRadio();
                  } else {
                    context.read<RadioCubit>().playRadio();
                  }
                  setState(() {
                    isPlaying = !isPlaying;
                  });
                },
                icon: Image.asset(
                  isPlaying ? Assets.imagesPause : Assets.imagesAwesomePlay,
                ),
              ),
            ),
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: IconButton(
                onPressed: () {
                  if (isPlaying) {
                    context.read<RadioCubit>().nextRadio();
                  }
                },
                icon: Image.asset(Assets.imagesMetroNext),
              ),
            ),
          ],
        ),
      ],
    );
  }
}