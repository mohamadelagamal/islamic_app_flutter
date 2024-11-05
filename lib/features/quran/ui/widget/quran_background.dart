import 'package:flutter/material.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../generated/assets.dart';

class QuranBackground extends StatelessWidget {
  const QuranBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkNotifier,
      builder: (context, isDark, child) {
        return Stack(
          children: [
            Image.asset(
              isDark ? Assets.imagesDarkBackground : Assets.imagesLigthBackground,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        );
      },
    );
  }
}