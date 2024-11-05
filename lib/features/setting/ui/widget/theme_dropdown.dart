import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_c4/core/helpers/constants.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';

import '../../logic/cubit/theme/theme_cubit.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeMode) {
        return Container(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  context.read<ThemeCubit>().setThemeMode();
                },
                child: isDark
                    ? getUnselectedItem(context, context.locIntl.light)
                    : getSelectedItem(context, context.locIntl.light),
              ),
              Divider(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  context.read<ThemeCubit>().setThemeMode();
                },
                child: isDark
                    ? getSelectedItem(context, context.locIntl.dark)
                    : getUnselectedItem(context, context.locIntl.dark),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.secondary,
          )
        ],
      ),
    );
  }

  Widget getUnselectedItem(BuildContext context, String text) {
    return Container(
      width: double.infinity,

      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}