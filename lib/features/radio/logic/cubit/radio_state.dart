part of 'radio_cubit.dart';

@immutable
abstract class RadioState {}

class RadioInitial extends RadioState {}

class RadioLoading extends RadioState {}

class RadioLoaded extends RadioState {
  final List<RadioModel> radios;

  final String radioName;

  RadioLoaded(this.radios, this.radioName);
}

class RadioError extends RadioState {
  final String message;

  RadioError(this.message);
}