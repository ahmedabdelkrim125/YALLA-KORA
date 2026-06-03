import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_request_body.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_response.dart';
import 'package:yalla_kora/features/booking_confirmation/data/repo/booking_repo.dart';

class BookingRepoImpl extends BookingRepo {
  final ApiService apiService;

  BookingRepoImpl({required this.apiService});

  @override
  Future<ApiResult<ApiResponseModel<BookingData>>> createBooking({
    required BookingRequestBody body,
  }) async {
    try {
      final response = await apiService.createBooking(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
