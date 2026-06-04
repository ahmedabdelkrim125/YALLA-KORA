import 'package:yalla_kora/core/networking/api_response_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/models/join_match_response.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/repo/join_match_repo.dart';

class JoinMatchRepoImpl extends JoinMatchRepo{
  final ApiService apiService;
  JoinMatchRepoImpl({required this.apiService});

  @override
  Future<ApiResult<ApiResponseModel<JoinMatchResponse>>> joinMatch({required String matchId}) async{
    try{
      final response = await apiService.joinMatch(matchId: matchId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}