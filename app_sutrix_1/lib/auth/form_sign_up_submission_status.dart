abstract class FormSignUpSubmissionStatus {
  const FormSignUpSubmissionStatus();
}

class InitialFormStatus extends FormSignUpSubmissionStatus {
  const InitialFormStatus();
}

class FormSubmitting extends FormSignUpSubmissionStatus {}

class SubmissionSuccess extends FormSignUpSubmissionStatus {}

class SubmissionFailed extends FormSignUpSubmissionStatus {
  final Exception exception;

  SubmissionFailed(this.exception);
}
