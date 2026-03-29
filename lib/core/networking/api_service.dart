import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yalla_kora/core/models/football-field-model/football_field_model.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import '../../features/signup/data/model/signup_request_body.dart';
import 'api_constants.dart';
import '../../features/login/data/model/login_request_body.dart';
import '../../features/login/data/model/login_response.dart';
import '../../features/signup/data/model/signup_response.dart';
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
  Future<List<FootballFieldModel>> getNearFacilities();
}
