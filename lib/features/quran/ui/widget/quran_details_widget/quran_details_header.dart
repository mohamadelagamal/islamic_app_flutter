import 'package:flutter/material.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';

import '../../../../../core/theming/styles.dart';

class QuranDetailsHeader extends StatelessWidget {
  const QuranDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon:  Icon(Icons.arrow_back_sharp, color: Theme.of(context).cardColor),
        ),
        Expanded(
          child: Center(
            child: Text(
              context.locIntl.islamicTitle,
              style: TextStyles.font24BlackBold(context),
            ),
          ),
        ),
      ],
    );
  }
}
