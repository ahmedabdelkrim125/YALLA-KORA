import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_request_body.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_response.dart';

abstract class BookingRepo {
  Future<ApiResult<ApiResponseModel<BookingData>>> createBooking({required BookingRequestBody body});
}