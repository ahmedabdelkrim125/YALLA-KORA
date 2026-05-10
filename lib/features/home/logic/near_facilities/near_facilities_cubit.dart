import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/home/data/near_facilities/repo/near_facilities_repo.dart';

import '../../data/near_facilities/model/field_model.dart';

part 'near_facilities_state.dart';
part 'near_facilities_cubit.freezed.dart';

class NearFacilitiesCubit extends Cubit<NearFacilitiesState> {
  final NearFacilitiesRepo _nearFacilitiesRepo;
  NearFacilitiesCubit(this._nearFacilitiesRepo) : super(NearFacilitiesState.initial());

  int page = 1;

  void emitNearFacilitiesStates() async {
    final currentFields = state.maybeWhen(
        success:(data) => data,
        orElse: ()=> <FieldModel>[]);

    emit(const NearFacilitiesState.loading());
    final response = await _nearFacilitiesRepo.getNearFields(pageNum: page);
    response.when(
      success: (apiResponse) {
        final allFields = [...currentFields, ...apiResponse.data.fields];
        emit(NearFacilitiesState.success(allFields));
        page++;
      },
      failure: (errorHandler) {
        emit(NearFacilitiesState.failure(errorHandler));
      },
    );
  }

  // dummy function to simulate api call
  // void emitNearFacilitiesStates() async {
  //   emit(const NearFacilitiesState.loading());
  //   await Future.delayed(const Duration(seconds: 5));
  //   emit(NearFacilitiesState.success(dummyFields));
  // }
}
