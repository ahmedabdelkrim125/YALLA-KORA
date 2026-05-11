import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/fields_response.dart';

abstract class NearFacilitiesRepo {
  Future<ApiResult<ApiResponseModel<FieldsResponse>>> getNearFields({int? pageNum, double? lat, double? lng});
}