import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/features/home/data/models/facility_model.dart';
import 'package:yalla_kora/features/home/data/repo/home_repo.dart';

import '../../../../core/networking/error_hander.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<ApiResult<FacilityModel>> getBestFacilities() async {
    try {
      final response = await _apiService.getBestFacilities();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<FacilityModel>> getNearFacilities({
    required double lat,
    required double lng,
    required int maxDistance,
  }) async {
    try {
      final response = await _apiService.getNearFacilities(
        lat: lat,
        lng: lng,
        maxDistance: maxDistance,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
