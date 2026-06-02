import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/matches_response.dart';
import 'package:yalla_kora/features/home/data/event_matches/repo/event_matches_repo.dart';

class EventMatchesRepoImpl extends EventMatchesRepo{
  final ApiService apiService;

  EventMatchesRepoImpl({required this.apiService});
  @override
  Future<ApiResult<ApiResponseModel<MatchesResponse>>> getEventMatches({required int pageNum}) async{
    try{
      final response = await apiService.getEventMatches(page: pageNum);
      return ApiResult.success(response);
    }
     catch (e) {
       return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}