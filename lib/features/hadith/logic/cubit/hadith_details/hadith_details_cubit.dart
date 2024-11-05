import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hadith_details_state.dart';

class HadithDetailsCubit  extends Cubit<String> {
HadithDetailsCubit() : super('');

static HadithDetailsCubit get(context) => BlocProvider.of(context);

  Future<void> loadHadithData(int index) async {
    final String response = await rootBundle.loadString('assets/hadeth/h$index.txt');
    emit(response);
  }
}
