import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/fields_response.dart';
import 'package:yalla_kora/features/home/data/near_facilities/repo/near_facilities_repo.dart';

class NearFacilitiesRepoImpl extends NearFacilitiesRepo{
  final ApiService apiService;

  NearFacilitiesRepoImpl({required this.apiService});

  @override
  Future<ApiResult<ApiResponseModel<FieldsResponse>>> getNearFields({int? pageNum,  double? lat, double? lng}) async {
    try{
      final response = await apiService.getNearFacilities(
        page: pageNum,
        lat: lat,
        lng: lng,
      );
      return ApiResult.success(response);
    }
    catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

}