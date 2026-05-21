import 'package:yalla_kora/core/networking/api_result.dart';
import '../../../../core/networking/api_response_model.dart';
import '../model/available_time_model.dart';

abstract class AvailableTimeRepo {
  Future<ApiResult<ApiResponseModel<AvailableTimeModel>>> getAvailableTimes({required String fieldId, required String date});
}