part of 'near_facilities_cubit.dart';

@freezed
abstract class NearFacilitiesState with _$NearFacilitiesState {
  const factory NearFacilitiesState.initial() = _Initial;
  const factory NearFacilitiesState.loading() = NearFacilitiesLoading;
  const factory NearFacilitiesState.success(
    List<FieldModel> data, {
    @Default(0) int totalFields,
    @Default(false) bool isLoadingMore,  // في loading؟
    @Default(false) bool hasError,       // في error؟
    ErrorHandler? errorHandler,          // رسالة الـ error
  }) = NearFacilitiesSuccess;
  const factory NearFacilitiesState.failure(ErrorHandler error) = NearFacilitiesError;
}
