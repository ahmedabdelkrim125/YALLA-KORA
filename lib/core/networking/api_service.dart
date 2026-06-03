import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_request_body.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_response.dart';
import 'package:yalla_kora/features/facility-details/data/model/available_time_model.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/matches_response.dart';
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
  Future<ApiResponseModel<MatchesResponse>> getEventMatches({@Query("page") int? page});

  //Near Facilities//
  @GET(ApiConstants.nearFacilities)
  Future<ApiResponseModel<FieldsResponse>> getNearFacilities({
    @Query("page") int? page,
    @Query("lat") double? lat,
    @Query("lng") double? lng,
  });

  //Available Times//
  @GET(ApiConstants.availableTimes)
  Future<ApiResponseModel<AvailableTimeModel>> getAvailableTimes({
    @Path("field_id") required String fieldId,
    @Query("date") required String date,
  });

  @POST(ApiConstants.createBooking)
  Future<ApiResponseModel<BookingData>> createBooking({
     @Body() required BookingRequestBody body,
  });
}
