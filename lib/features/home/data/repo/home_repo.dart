import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/features/home/data/models/facility_model.dart';

abstract class HomeRepo {
  Future<ApiResult<FacilityModel>> getNearFacilities({
    required double lat,
    required double lng,
    required int maxDistance,
  });

  Future<ApiResult<FacilityModel>> getBestFacilities();
}
