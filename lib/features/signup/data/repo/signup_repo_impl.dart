import 'package:yalla_kora/core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../model/signup_request_body.dart';
import '../model/signup_response.dart';
import 'package:yalla_kora/features/signup/data/repo/signup_repo.dart';
import '../../../../core/networking/error_hander.dart';

class SignupRepoImpl implements SignupRepo {
  final ApiService apiService;

  SignupRepoImpl(this.apiService);

  @override
  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody registerRequestBody,
  ) async {
    try {
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
