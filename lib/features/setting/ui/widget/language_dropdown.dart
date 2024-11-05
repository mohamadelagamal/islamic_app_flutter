import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_c4/features/setting/logic/cubit/setting_cubit.dart';

import '../../logic/cubit/local_cubit.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingCubit(),
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          var localeCubit = context.read<LocaleCubit>();
          return Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    localeCubit.changeLocale('en');
                  },
                  child: state.currentLocale == 'en'
                      ? getSelectedItem(context, 'English')
                      : getUnselectedItem(context, 'English'),
                ),
                Divider(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    localeCubit.changeLocale('ar');
                  },
                  child: state.currentLocale == 'ar'
                      ? getSelectedItem(context, 'العربيه')
                      : getUnselectedItem(context, 'العربيه'),
                ),
              ],
            ),
          );
        },
      ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}