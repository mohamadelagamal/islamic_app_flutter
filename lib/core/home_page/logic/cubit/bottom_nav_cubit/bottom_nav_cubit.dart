import 'package:flutter_bloc/flutter_bloc.dart';
part 'bottom_nav_state.dart';
// bloc provider import

enum BottomNavPage { quran, hadith, tasbeeh, radio, setting }

class BottomNavCubit extends Cubit<BottomNavPage> {
  BottomNavCubit() : super(BottomNavPage.quran);
  static BottomNavCubit get(context) => BlocProvider.of(context);

  void updatePage(BottomNavPage page) => emit(page);
}
