import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../data/models/radio_model.dart';
import '../../data/repository/radio_repository.dart';

part 'radio_state.dart';

// lib/features/radio/logic/cubit/radio_cubit.dart

class RadioCubit extends Cubit<RadioState> {
  final RadioRepository radioRepository;

  RadioCubit(this.radioRepository) : super(RadioInitial());

  static RadioCubit get(context) => BlocProvider.of(context);

  RadioModel? selectedRadio;
  List<RadioModel> radiosList = [];
  int counter = 0;
  final player = AudioPlayer();
  String radioName = '';

  Future<void> loadRadios() async {
    if(isClosed)return;
    try {
      var response = await radioRepository.fetchRadios();
      radiosList = response;
      selectedRadio = radiosList.first;
      radioName = selectedRadio!.name;
      emit(RadioLoaded(radiosList, radioName));

    } catch (e) {
      emit(RadioError(
          'An error occurred while loading radios. Please check your internet connection and try again.'
      ));
    }

  }

  Future<void> playRadio() async {
    if (radiosList.isNotEmpty) {
      selectedRadio = radiosList.first;
      radioName = selectedRadio!.name; // Set the radio name
      await player.play(UrlSource(selectedRadio!.url));
      emit(RadioLoaded(radiosList, radioName)); // Emit updated state
    }
  }

  Future<void> stopRadio() async {
    await player.stop();
  }

  Future<void> pauseRadio() async {
    player.pause();
  }

  Future<void> resumeRadio() async {
    player.resume();
  }

  Future<void> nextRadio() async {
    if (radiosList.isNotEmpty) {
      await player.stop();
      counter++;
      if (counter >= radiosList.length) {
        counter = 0;
      }
      selectedRadio = radiosList[counter];
      radioName = selectedRadio!.name; // Set the radio name
      await player.play(UrlSource(selectedRadio!.url));
      emit(RadioLoaded(radiosList, radioName)); // Emit updated state
    }
  }

  Future<void> previousRadio() async {
    if (radiosList.isNotEmpty) {
      await player.stop();
      counter--;
      if (counter < 0) {
        counter = radiosList.length - 1;
      }
      selectedRadio = radiosList[counter];
      radioName = selectedRadio!.name; // Set the radio name
      await player.play(UrlSource(selectedRadio!.url));
      emit(RadioLoaded(radiosList, radioName)); // Emit updated state
    }
  }

  @override
  Future<void> close() {
    // Perform any cleanup if necessary
    return super.close();
  }
}