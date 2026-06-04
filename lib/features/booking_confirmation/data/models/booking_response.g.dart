// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingData _$BookingDataFromJson(Map<String, dynamic> json) => BookingData(
  booking: Booking.fromJson(json['booking'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookingDataToJson(BookingData instance) =>
    <String, dynamic>{'booking': instance.booking};

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
  id: json['_id'] as String,
  bookingCode: json['booking_code'] as String,
  player: json['player'] as String,
  field: Field.fromJson(json['field'] as Map<String, dynamic>),
  date: json['date'] as String,
  timeFrom: json['time_from'] as String,
  timeTo: json['time_to'] as String,
  playersCount: (json['players_count'] as num).toInt(),
  type: json['type'] as String,
  paymentMethod: json['payment_method'] as String,
  status: json['status'] as String,
  totalPrice: (json['total_price'] as num).toInt(),
  serviceFee: (json['service_fee'] as num).toInt(),
  createdAt: json['createdAt'] as String,
);

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
  '_id': instance.id,
  'booking_code': instance.bookingCode,
  'player': instance.player,
  'field': instance.field,
  'date': instance.date,
  'time_from': instance.timeFrom,
  'time_to': instance.timeTo,
  'players_count': instance.playersCount,
  'type': instance.type,
  'payment_method': instance.paymentMethod,
  'status': instance.status,
  'total_price': instance.totalPrice,
  'service_fee': instance.serviceFee,
  'createdAt': instance.createdAt,
};

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
  id: json['_id'] as String,
  name: json['name'] as String,
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'location': instance.location,
};

Location _$LocationFromJson(Map<String, dynamic> json) =>
    Location(name: json['name'] as String, address: json['address'] as String);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
};
