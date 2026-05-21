// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableTimeModel _$AvailableTimeModelFromJson(Map<String, dynamic> json) =>
    AvailableTimeModel(
      date: json['date'] as String,
      slots: (json['slots'] as List<dynamic>)
          .map((e) => Slot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvailableTimeModelToJson(AvailableTimeModel instance) =>
    <String, dynamic>{'date': instance.date, 'slots': instance.slots};

Slot _$SlotFromJson(Map<String, dynamic> json) =>
    Slot(time: json['time'] as String, status: json['status'] as String);

Map<String, dynamic> _$SlotToJson(Slot instance) => <String, dynamic>{
  'time': instance.time,
  'status': instance.status,
};
