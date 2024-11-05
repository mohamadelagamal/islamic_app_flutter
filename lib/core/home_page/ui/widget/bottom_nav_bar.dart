import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_c4/core/helpers/extensions.dart';
import 'package:islamic_c4/generated/assets.dart';
import '../../../theming/colors.dart';
import '../../logic/cubit/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavPage>(
      builder: (context, state) {
        return Container(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, bottom: 16.0.h),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(Assets.imagesIconQuran)),
                    label: context.locIntl.quranIconTitle,
                    backgroundColor: ColorsManager.camelBrown,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(Assets.imagesIconHadeth)),
                    label: context.locIntl.hadithIconTitle,
                    backgroundColor: ColorsManager.camelBrown,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(Assets.imagesIconSebha)),
                    label: context.locIntl.tasbehIconTitle,
                    backgroundColor: ColorsManager.camelBrown,
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(Assets.imagesIconRadio)),
                    label: context.locIntl.radioIconTitle,
                    backgroundColor: ColorsManager.camelBrown,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: context.locIntl.settingsIconTitle,
                    backgroundColor: ColorsManager.camelBrown,
                  ),
                ],
                currentIndex: BottomNavPage.values.indexOf(state),
                selectedItemColor: ColorsManager.darkBlue,
                unselectedItemColor: ColorsManager.white,
                onTap: (index) => context.read<BottomNavCubit>().updatePage(BottomNavPage.values[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}