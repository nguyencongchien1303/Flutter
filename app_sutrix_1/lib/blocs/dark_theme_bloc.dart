import 'package:app_sutrix_1/events/dark_theme_event.dart';
import 'package:bloc/bloc.dart';

class DarkThemeBloc extends Bloc<DarkThemeEvent, bool> {
  DarkThemeBloc() : super(true);
  @override
  Stream<bool> mapEventToState(DarkThemeEvent event) async* {
    switch (event) {
      case DarkThemeEvent.lightTheme:
        var newState = true;
        yield newState;
        break;
      case DarkThemeEvent.darkTheme:
        var newState = false;
        yield newState;
        break;
    }
  }
}
