import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/models/join_match_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/repo/join_match_repo.dart';

part 'join_match_state.dart';
part 'join_match_cubit.freezed.dart';

class JoinMatchCubit extends Cubit<JoinMatchState>{
  final JoinMatchRepo _joinMatchRepo;
  JoinMatchCubit(this._joinMatchRepo) : super (JoinMatchState.initial());

  Future<void> joinMatch({required String matchId}) async{
    emit(const JoinMatchState.loading());
    final response = await _joinMatchRepo.joinMatch(matchId: matchId);

    response.when(
        success: (response) => emit(JoinMatchState.success(response.data)),
        failure: (errorHandler) => emit(JoinMatchState.failure(errorHandler))
    );
  }
}