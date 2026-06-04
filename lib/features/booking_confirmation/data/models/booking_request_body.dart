import 'package:json_annotation/json_annotation.dart';
part 'booking_request_body.g.dart';

@JsonSerializable()
class BookingRequestBody {
  @JsonKey(name: 'field_id')
  final String fieldId;
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

  BookingRequestBody({
    required this.fieldId,
    required this.date,
    required this.timeFrom,
    required this.timeTo,
    required this.playersCount,
    required this.type,
    required this.paymentMethod,
  });

  Map<String, dynamic> toJson() => _$BookingRequestBodyToJson(this);
}