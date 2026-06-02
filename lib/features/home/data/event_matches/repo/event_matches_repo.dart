import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/matches_response.dart';

abstract class EventMatchesRepo {
  Future<ApiResult<ApiResponseModel<MatchesResponse>>> getEventMatches({required int pageNum});
}