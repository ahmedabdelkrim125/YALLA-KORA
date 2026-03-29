part of 'near_facilities_cubit.dart';

@freezed
abstract class NearFacilitiesState with _$NearFacilitiesState {
  const factory NearFacilitiesState.initial() = _Initial;
  const factory NearFacilitiesState.loading() = NearFacilitiesLoading;
  const factory NearFacilitiesState.success(List<FootballFieldModel> data) = NearFacilitiesSuccess;
  const factory NearFacilitiesState.failure(ErrorHandler error) = NearFacilitiesFailure;
}
