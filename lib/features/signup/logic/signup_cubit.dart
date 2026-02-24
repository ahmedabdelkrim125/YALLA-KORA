import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/signup/data/model/signup_request_body.dart';
import 'package:yalla_kora/features/signup/data/model/signup_response.dart';
import 'package:yalla_kora/features/signup/data/repo/signup_repo.dart';

import '../../../core/networking/api_result.dart';
part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  void emitSignupStates(SignupRequestBody signupRequestBody) async {
    emit(const SignupState.loading());
    final response = await _signupRepo.signup(signupRequestBody);
    response.when(
      success: (signupResponse) {
        emit(SignupState.success(signupResponse));
      },
      failure: (errorHandler) {
        emit(SignupState.error(errorHandler));
      },
    );
  }
}
