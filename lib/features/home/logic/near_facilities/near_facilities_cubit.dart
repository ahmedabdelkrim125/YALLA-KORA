import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:yalla_kora/core/constants/dummy_data.dart';
import 'package:yalla_kora/core/models/football-field-model/football_field_model.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/near_facilities/repo/near_facilities_repo.dart';

part 'near_facilities_state.dart';
part 'near_facilities_cubit.freezed.dart';

class NearFacilitiesCubit extends Cubit<NearFacilitiesState> {
  final NearFacilitiesRepo _nearFacilitiesRepo;
  NearFacilitiesCubit(this._nearFacilitiesRepo) : super(NearFacilitiesState.initial());

  // todo : implement real api call
  // void emitNearFacilitiesStates() async {
  //   emit(const NearFacilitiesState.loading());
  //   final response = await _nearFacilitiesRepo.getNearFacilities();
  //   response.when(
  //     success: (data) {
  //       emit(NearFacilitiesState.success(data));
  //     },
  //     failure: (errorHandler) {
  //       emit(NearFacilitiesState.failure(errorHandler));
  //     },
  //   );
  // }

  // dummy function to simulate api call
  void emitNearFacilitiesStates() async {
    emit(const NearFacilitiesState.loading());
    await Future.delayed(const Duration(seconds: 5));
    emit(NearFacilitiesState.success(dummyFields));
  }
}
