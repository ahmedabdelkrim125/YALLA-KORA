import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/home/data/event_matches/repo/event_matches_repo.dart';

class EventMatchesRepoImpl extends EventMatchesRepo{
  final ApiService apiService;

  EventMatchesRepoImpl({required this.apiService});
  @override
  Future<ApiResult<List<MatchModel>>> getEventMatches() async{
    try{
      final response = await apiService.getEventMatches();
      return ApiResult.success(response);
    }
     catch (e) {
      return Future.value(ApiResult.failure(ErrorHandler.handle(e)));
    }
  }
}