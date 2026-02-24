import 'package:yalla_kora/core/networking/api_result.dart';
import '../model/signup_request_body.dart';
import '../model/signup_response.dart';

abstract class SignupRepo {
  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody registerRequestBody,
  );
}
