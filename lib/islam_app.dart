import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/helpers/constants.dart';
import 'core/home_page/logic/cubit/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'core/home_page/ui/screen/my_home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theming/my_theming.dart';
import 'features/setting/logic/cubit/local_cubit.dart';
import 'features/setting/logic/cubit/theme/theme_cubit.dart';
import 'generated/l10n.dart';
import 'core/routing/app_router.dart';

class IslamApp extends StatelessWidget {
  final String locale;

  const IslamApp({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavCubit()),
        BlocProvider(
          create: (_) => LocaleCubit(currentLocale: locale ?? 'en'),
        ),
        BlocProvider(
            create: (_) =>
                ThemeCubit()),
      ],
      child: ValueListenableBuilder<bool>(
        valueListenable: isDarkNotifier,
        builder: (context, isDark, child) {
          return Builder(
            builder: (context) {
              var localCubit = context.watch<LocaleCubit>();
              return ScreenUtilInit(
                designSize: const Size(375, 812),
                minTextAdapt: true,
                child: MaterialApp(
                  locale: Locale(localCubit.state.currentLocale),
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: AppRouter.generateRoute,
                  localizationsDelegates: [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  home: const MyHomePage(),
                  theme: isDarkNotifier.value ? MyThemeData.darkTheme : MyThemeData.lightTheme,
                  // darkTheme: MyThemeData.darkTheme,
                  // themeMode: themeCubit.state,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
