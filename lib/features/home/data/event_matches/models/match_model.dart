import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.g.dart';
@JsonSerializable()
class MatchModel {
  final String time, venue, sharePrice;
  final int playersNeeded;

  const MatchModel({
    required this.time,
    required this.venue,
    required this.playersNeeded,
    required this.sharePrice,
  });
  factory MatchModel.fromJson(Map<String, dynamic> json) => _$MatchModelFromJson(json);
}
