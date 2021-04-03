import 'package:app_sutrix_1/events/switch_signin_signup_event.dart';
import 'package:bloc/bloc.dart';

class SwitchSignInSignUpBloc extends Bloc<SwitchSignInSignUpEvent, bool> {
  SwitchSignInSignUpBloc() : super(true);

  @override
  Stream<bool> mapEventToState(SwitchSignInSignUpEvent event) async* {
    switch (event) {
      case SwitchSignInSignUpEvent.signIn:
        var newState = true;
        yield newState;
        break;
      case SwitchSignInSignUpEvent.signUp:
        var newState = false;
        yield newState;
        break;
    }
  }
}
