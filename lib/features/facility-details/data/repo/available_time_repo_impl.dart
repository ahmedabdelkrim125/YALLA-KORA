import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/facility-details/data/model/available_time_model.dart';
import 'package:yalla_kora/features/facility-details/data/repo/available_time_repo.dart';

class AvailableTimeRepoImpl extends AvailableTimeRepo{
  final ApiService apiService;

  AvailableTimeRepoImpl({required this.apiService});

  @override
  Future<ApiResult<ApiResponseModel<AvailableTimeModel>>> getAvailableTimes({required String fieldId, required String date}) async{
    try{
      final response = await apiService.getAvailableTimes(fieldId: fieldId, date: date);
      return ApiResult.success(response);
    }
    catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}