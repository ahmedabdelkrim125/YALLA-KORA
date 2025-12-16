import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yalla_kora/core/networking/api_constants.dart';
import 'package:yalla_kora/features/login/data/model/login_request_body.dart';
import 'package:yalla_kora/features/login/data/model/login_response.dart';
part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
