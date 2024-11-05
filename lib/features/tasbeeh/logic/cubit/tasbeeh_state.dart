part of 'tasbeeh_cubit.dart';

@immutable
class TasbeehState {
  final int pressCount;
  final String buttonText;
  final double rotationAngle;

  const TasbeehState({
    required this.pressCount,
    required this.buttonText,
    required this.rotationAngle,
  });
}

class TasbeehInitial extends TasbeehState {
  TasbeehInitial()
      : super(pressCount: 0, buttonText: 'سبحان الله', rotationAngle: 0.0);
}