part of 'signup_cubit.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = SignupLoading;
  const factory SignupState.success(SignupResponse signupResponse) =
      SignupSuccess;
  const factory SignupState.error(ErrorHandler errorHandler) = SignupError;
}
