import '../../../../core/networking/api_result.dart';
import '../model/login_request_body.dart';
import '../model/login_response.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body);
}
