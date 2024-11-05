import 'package:get_it/get_it.dart';
import '../../features/hadith/logic/cubit/hadith_cubit.dart';
import '../../features/quran/data/models/surah_data.dart';
import '../../features/quran/logic/cubit/quran_cubit.dart';
import '../../features/radio/data/repository/radio_repository.dart';
import '../../features/radio/logic/cubit/radio_cubit.dart';
import '../shared_preferences/shared_preferences.dart';



final getIt = GetIt.instance;

// set up get it
Future<void> setUpGetIt() async {

  /// Shared Preferences setup
  getIt.registerSingleton<CashHelperSharedPreferences>(
      CashHelperSharedPreferences());

  /// Dio & ApiService setup
  // Dio dio = await DioFactory.getDio();
  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // /// quran
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // /// sign up
  // getIt.registerLazySingleton<SignUpRepository>(() => SignUpRepository(getIt()));
  // getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  getIt.registerLazySingleton<QuranCubit>(() => QuranCubit());
  getIt.registerLazySingleton<HadithCubit>(() => HadithCubit());
  getIt.registerLazySingleton<RadioCubit>(() => RadioCubit(getIt()));
  getIt.registerLazySingleton<RadioRepository>(() => RadioRepository());


  getIt.registerLazySingleton<SurahData>(() => SurahData());
}