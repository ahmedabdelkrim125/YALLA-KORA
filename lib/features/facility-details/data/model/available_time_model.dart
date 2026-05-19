import 'package:json_annotation/json_annotation.dart';

part 'available_time_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class AvailableTimeModel {
  final String date;
  final List<Slot> slots;

  AvailableTimeModel({
    required this.date,
    required this.slots,
  });
  factory AvailableTimeModel.fromJson(Map<String, dynamic> json) => _$AvailableTimeModelFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class Slot{
  final String time;
  final String status;

  Slot({
    required this.time,
    required this.status,
  });
  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
}