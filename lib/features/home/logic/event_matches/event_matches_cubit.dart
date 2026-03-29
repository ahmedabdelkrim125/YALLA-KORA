import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:yalla_kora/core/constants/dummy_data.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/event_matches/repo/event_matches_repo.dart' show EventMatchesRepo;

part 'event_matches_state.dart';
part 'event_matches_cubit.freezed.dart';

class EventMatchesCubit extends Cubit<EventMatchesState> {
  final EventMatchesRepo _eventMatchesRepo;
  EventMatchesCubit(this._eventMatchesRepo) : super(EventMatchesState.initial());

  // todo : implement real api call
  // void emitEventMatchesStates() async {
  //   emit(const EventMatchesState.loading());
  //   final response = await _eventMatchesRepo.getEventMatches();
  //   response.when(
  //     success: (data) {
  //       emit(EventMatchesState.success(data));
  //     },
  //     failure: (errorHandler) {
  //       emit(EventMatchesState.failure(errorHandler));
  //     },
  //   );
  // }

  // dummy function to simulate api call
  void emitEventMatchesStates() async {
    emit(const EventMatchesState.loading());
    await Future.delayed(const Duration(seconds: 5));
    emit(EventMatchesState.success(dummyMatches));
  }
}
