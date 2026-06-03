// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingRequestBody _$BookingRequestBodyFromJson(Map<String, dynamic> json) =>
    BookingRequestBody(
      fieldId: json['field_id'] as String,
      date: json['date'] as String,
      timeFrom: json['time_from'] as String,
      timeTo: json['time_to'] as String,
      playersCount: (json['players_count'] as num).toInt(),
      type: json['type'] as String,
      paymentMethod: json['payment_method'] as String,
    );

Map<String, dynamic> _$BookingRequestBodyToJson(BookingRequestBody instance) =>
    <String, dynamic>{
      'field_id': instance.fieldId,
      'date': instance.date,
      'time_from': instance.timeFrom,
      'time_to': instance.timeTo,
      'players_count': instance.playersCount,
      'type': instance.type,
      'payment_method': instance.paymentMethod,
    };
