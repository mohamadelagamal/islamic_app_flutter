import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

part 'quran_screen_details_state.dart';

class QuranScreenDetailsCubit extends Cubit<String> {
  QuranScreenDetailsCubit() : super('');

  Future<void> loadSurahData(int index) async {
    final String response = await rootBundle.loadString('assets/quran/$index.txt');
    emit(response);
  }

  Future<void> loadSurahAudio(int index) async {
    try {
      final mp3Url = await fetchSurahMp3Url(index);
      emit(mp3Url);
    } catch (e) {
      emit('Error loading MP3');
    }
  }

  void playSurah() {
    final player = AudioPlayer();
    player.play(UrlSource(state));
  }
}

Future<String> fetchSurahMp3Url(int surahNumber) async {
  final response = await http.get(Uri.parse('http://api.alquran.cloud/v1/surah/$surahNumber/ar.alafasy'));

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['data']['ayahs'][0]['audio'];
  } else {
    throw Exception('Failed to load Surah MP3');
  }
}