import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import '../../features/home/data/near_facilities/model/fields_response.dart';
import '../../features/signup/data/model/signup_request_body.dart';
import 'api_constants.dart';
import '../../features/login/data/model/login_request_body.dart';
import '../../features/login/data/model/login_response.dart';
import '../../features/signup/data/model/signup_response.dart';
import 'api_response_model.dart';
part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  //Signup//
  @POST(ApiConstants.register)
  Future<SignupResponse> register(
    @Body() SignupRequestBody registerRequestBody,
  );

  //Event Matches//
  @GET(ApiConstants.eventMatches)
  Future<List<MatchModel>> getEventMatches();

  //Near Facilities//
  @GET(ApiConstants.nearFacilities)
  Future<ApiResponseModel<FieldsResponse>> getNearFacilities({
    @Query("page") int? page,
    @Query("lat") double? lat,
    @Query("lng") double? lng,
  });
}
