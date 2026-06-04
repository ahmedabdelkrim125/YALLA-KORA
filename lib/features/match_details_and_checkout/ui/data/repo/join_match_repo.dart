import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/models/join_match_response.dart';

abstract class JoinMatchRepo {
  Future<ApiResult<ApiResponseModel<JoinMatchResponse>>> joinMatch({required String matchId});
}