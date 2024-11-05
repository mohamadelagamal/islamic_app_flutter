import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tasbeeh_state.dart';



class TasbeehCubit extends Cubit<TasbeehState> {
  TasbeehCubit() : super(TasbeehInitial());

  void increment() {
    if (state.pressCount < 33) {
      emit(TasbeehState(
        pressCount: state.pressCount + 1,
        buttonText: state.buttonText,
        rotationAngle: state.rotationAngle + 15 * (3.141592653589793 / 180),
      ));
    } else {
      String newText = state.buttonText;
      if (state.buttonText == 'سبحان الله') {
        newText = 'الحمد لله';
      } else if (state.buttonText == 'الحمد لله') {
        newText = 'الله اكبر';
      } else if (state.buttonText == 'الله اكبر') {
        newText = 'سبحان الله';
      }
      emit(TasbeehState(
        pressCount: 0,
        buttonText: newText,
        rotationAngle: state.rotationAngle + 15 * (3.141592653589793 / 180),
      ));
    }
  }
}