import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:yalla_kora/core/networking/api_result.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/core/service/location_service.dart';
import 'package:yalla_kora/features/home/data/near_facilities/repo/near_facilities_repo.dart';

import '../../data/near_facilities/model/field_model.dart';

part 'near_facilities_state.dart';
part 'near_facilities_cubit.freezed.dart';

class NearFacilitiesCubit extends Cubit<NearFacilitiesState> {
  final NearFacilitiesRepo _nearFacilitiesRepo;
  NearFacilitiesCubit(this._nearFacilitiesRepo) : super(NearFacilitiesState.initial());

  int page = 1;
  double? _lat;
  double? _lng;

  void emitNearFacilitiesStates() async {
    final currentFields = state.maybeWhen(
        success:(data, total, currentPage, totalPages, isLoadingMore, hasError, errorHandler) => data,
        orElse: ()=> <FieldModel>[]);

    final currentTotal = state.maybeWhen(
      success: (data, total, currentPage, totalPages, isLoadingMore, hasError, errorHandler) => total,
      orElse: () => 0,
    );

    final currentTotalPages = state.maybeWhen(
      success: (data, total, currentPage, totalPages, isLoadingMore, hasError, errorHandler) => totalPages,
      orElse: () => 1,
    );

    // to check if i reached the end of pagination or not, if page > totalPages, stop emitting more states
    if (page > currentTotalPages && currentTotalPages != 1) return;

    if (currentFields.isNotEmpty) {
      // emit loading more
      emit(NearFacilitiesState.success(currentFields, isLoadingMore: true, totalFields: currentTotal, totalPages: currentTotalPages));
    } else {
      emit(const NearFacilitiesState.loading());

      final position = await LocationService.getCurrentLocation();
      _lat = position?.latitude;
      _lng = position?.longitude;
    }

    final response = await _nearFacilitiesRepo.getNearFields(
        pageNum: page,
        lat: _lat,
        lng: _lng
    );
    response.when(
      success: (apiResponse) {
        final allFields = [...currentFields, ...apiResponse.data.fields];
        emit(NearFacilitiesState.success(
          allFields,
          totalFields: apiResponse.data.pagination.total,
          currentPage: apiResponse.data.pagination.page,
          totalPages: apiResponse.data.pagination.pages,
        ));
        page++;
      },
      failure: (errorHandler) {
        if (currentFields.isNotEmpty) {
          // footer error
          emit(NearFacilitiesState.success(
            currentFields,
            totalFields: currentTotal,
            totalPages: currentTotalPages,
            hasError: true,
            errorHandler: errorHandler,
          ));
        } else {
          emit(NearFacilitiesState.failure(errorHandler));
        }
      },
    );
  }

  // assign initial fields of page 1 (that i got it in home) to the state of new cubit
  void loadInitialFields({required List<FieldModel> initFields, required int totalFields, required int totalPages}) async {
    page = 2;
    emit(NearFacilitiesState.success(initFields, totalFields: totalFields, totalPages: totalPages));
  }

  // dummy function to simulate api call
  // void emitNearFacilitiesStates() async {
  //   emit(const NearFacilitiesState.loading());
  //   await Future.delayed(const Duration(seconds: 5));
  //   emit(NearFacilitiesState.success(dummyFields));
  // }
}
