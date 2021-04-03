import 'package:app_sutrix_1/auth/auth_repository.dart';
import 'package:app_sutrix_1/events/validators_form/sign_up_event.dart';
import 'package:app_sutrix_1/auth/form_sign_up_submission_status.dart';
import 'package:app_sutrix_1/states/sign_up_state.dart';
import 'package:bloc/bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository authRepo;
  SignUpBloc(this.authRepo) : super(SignUpState());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is SignUpNameChanged) {
      yield state.copyWith(name: event.name);
      //

    } else if (event is SignUpPhoneNumberChanged) {
      yield state.copyWith(phoneNumber: event.phoneNumber);
      //

    } else if (event is SignUpPasswordChanged) {
      yield state.copyWith(password: event.password);
      //

    } else if (event is SignUpConfirmPasswordChanged) {
      yield state.copyWith(comfirmPassword: event.comfirmPassword);
      //

    } else if (event is LogupSubmitted) {
      yield state.copyWith(formSignUpStatus: FormSubmitting());

      try {
        await authRepo.login();
        yield state.copyWith(formSignUpStatus: SubmissionSuccess());
      } catch (e) {
        yield state.copyWith(formSignUpStatus: SubmissionFailed(e));
      }
    }
  }
}
