import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:yalla_kora/features/facility-details/data/repo/available_time_repo.dart';

import '../../../core/networking/api_result.dart';
import '../../../core/networking/error_hander.dart';
import '../data/model/available_time_model.dart';

part 'available_time_state.dart';
part 'available_time_cubit.freezed.dart';
class AvailableTimeCubit extends Cubit<AvailableTimeState> {
  AvailableTimeCubit({required this.availableTimeRepo}) : super(AvailableTimeState.initial());
  final AvailableTimeRepo availableTimeRepo;

  String fieldId = '';
  void emitAvailableTimes({required String fieldId, required String date}) async {
    if (fieldId.isNotEmpty) this.fieldId = fieldId;

    emit(const AvailableTimeState.loading());
    final response = await availableTimeRepo.getAvailableTimes(fieldId: this.fieldId, date: date);
    response.when(
      success: (data) => emit(AvailableTimeState.success(data.data)),
      failure: (error) => emit(AvailableTimeState.failure(error)),
    );
  }

  void toggleSlot(Slot slot) {
    final currentState = state;
    if(currentState is! AvailableTimeSuccess) return;
    final updatedSlots = currentState.data.slots.map((s){
      s.isSelected = s.time == slot.time;
      return s;
    }).toList();
    
    final updateData = AvailableTimeModel(
        date: currentState.data.date,
        slots: updatedSlots
    );
    emit(AvailableTimeState.success(updateData));
  }
}
