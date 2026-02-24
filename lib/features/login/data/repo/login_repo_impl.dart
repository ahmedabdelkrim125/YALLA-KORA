import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/features/login/data/model/login_request_body.dart';
import 'package:yalla_kora/features/login/data/model/login_response.dart';
import 'package:yalla_kora/features/login/data/repo/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiService _apiService;
  LoginRepoImpl({required ApiService apiService}) : _apiService = apiService;
  @override
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      print('❌ CAUGHT: $e');
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
