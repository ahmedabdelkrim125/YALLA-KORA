import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/features/login/data/model/login_request_body.dart';
import '../../../core/networking/api_result.dart';
import '../data/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  // Controllers
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // Form Key
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(LoginState.loading());

    final response = await _loginRepo.login(
      LoginRequestBody(
        phone: phoneController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        // print('❌ ERROR: ${error.apiErrorModel.message}');
        // print('❌ EXCEPTION: $error');
        emit(LoginState.failure(erro: error.apiErrorModel.message));
      },
    );
  }
}
