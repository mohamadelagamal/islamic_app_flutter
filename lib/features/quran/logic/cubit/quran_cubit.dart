// quran_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/surah_data.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(QuranInitial());

  static QuranCubit get(context) => BlocProvider.of(context);
  final surahData = SurahData();
  List<String> get suraNames => surahData.arSuras;
  List<int> get ayahCounts => surahData.numberOfAyahs;
}
