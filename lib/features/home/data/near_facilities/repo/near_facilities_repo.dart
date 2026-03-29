import 'package:yalla_kora/core/models/football-field-model/football_field_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';

abstract class NearFacilitiesRepo {
  Future<ApiResult<List<FootballFieldModel>>> getNearFacilities();
}