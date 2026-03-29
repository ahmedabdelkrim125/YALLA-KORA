import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';

abstract class EventMatchesRepo {
  Future<ApiResult<List<MatchModel>>> getEventMatches();
}