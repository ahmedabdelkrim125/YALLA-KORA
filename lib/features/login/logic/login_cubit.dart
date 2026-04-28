import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/features/login/data/model/login_request_body.dart';
import '../../../core/networking/api_result.dart';
import '../../../core/service/storage_service.dart';
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
      success: (loginResponse) async{
        // Save token and user info in storage
        final token = loginResponse.data.token;
        final user = loginResponse.data.user;

        await StorageService.saveAuthToken(token);
        await StorageService.saveUserInfo(id: user.id,
          name: user.name,
          phone: user.phone,
          role: user.role,
          governorate:user.governorate,
          matchNotifications: user.matchNotifications,
          matchesPlayed: user.matchesPlayed,
          walletBalance: user.walletBalance
        );

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
