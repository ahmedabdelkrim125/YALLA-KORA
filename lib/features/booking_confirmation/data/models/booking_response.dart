import 'package:json_annotation/json_annotation.dart';

part 'booking_response.g.dart';

@JsonSerializable()
class BookingData {
  final Booking booking;

  BookingData({
    required this.booking,
  });

  factory BookingData.fromJson(Map<String, dynamic> json) =>
      _$BookingDataFromJson(json);
}

@JsonSerializable()
class Booking {
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'booking_code')
  final String bookingCode;

  final String player;

  final Field field;

  final String date;

  @JsonKey(name: 'time_from')
  final String timeFrom;

  @JsonKey(name: 'time_to')
  final String timeTo;

  @JsonKey(name: 'players_count')
  final int playersCount;

  final String type;

  @JsonKey(name: 'payment_method')
  final String paymentMethod;

  final String status;

  @JsonKey(name: 'total_price')
  final int totalPrice;

  @JsonKey(name: 'service_fee')
  final int serviceFee;

  final String createdAt;

  Booking({
    required this.id,
    required this.bookingCode,
    required this.player,
    required this.field,
    required this.date,
    required this.timeFrom,
    required this.timeTo,
    required this.playersCount,
    required this.type,
    required this.paymentMethod,
    required this.status,
    required this.totalPrice,
    required this.serviceFee,
    required this.createdAt,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}

@JsonSerializable()
class Field {
  @JsonKey(name: '_id')
  final String id;

  final String name;

  final Location location;

  Field({
    required this.id,
    required this.name,
    required this.location,
  });

  factory Field.fromJson(Map<String, dynamic> json) =>
      _$FieldFromJson(json);
}

@JsonSerializable()
class Location {
  final String name;
  final String address;

  Location({
    required this.name,
    required this.address,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}