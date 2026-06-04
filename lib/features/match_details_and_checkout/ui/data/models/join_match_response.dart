import 'package:json_annotation/json_annotation.dart';

part 'join_match_response.g.dart';

@JsonSerializable()
class JoinMatchResponse {
  final Match match;

  JoinMatchResponse({
    required this.match,
  });

  factory JoinMatchResponse.fromJson(Map<String, dynamic> json) =>
      _$JoinMatchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JoinMatchResponseToJson(this);
}

@JsonSerializable()
class Match {
  @JsonKey(name: '_id')
  final String id;

  final User creator;

  final MatchField field;

  final String date;
  final String time;

  @JsonKey(name: 'players_needed')
  final int playersNeeded;

  @JsonKey(name: 'price_per_player')
  final int pricePerPlayer;

  final List<User> players;

  final String status;

  final DateTime createdAt;
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  Match({
    required this.id,
    required this.creator,
    required this.field,
    required this.date,
    required this.time,
    required this.playersNeeded,
    required this.pricePerPlayer,
    required this.players,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Match.fromJson(Map<String, dynamic> json) =>
      _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String id;

  final String name;

  final String? avatar;

  User({
    required this.id,
    required this.name,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class MatchField {
  @JsonKey(name: '_id')
  final String id;

  final String name;

  final MatchLocation location;

  MatchField({
    required this.id,
    required this.name,
    required this.location,
  });

  factory MatchField.fromJson(Map<String, dynamic> json) =>
      _$MatchFieldFromJson(json);

  Map<String, dynamic> toJson() => _$MatchFieldToJson(this);
}

@JsonSerializable()
class MatchLocation {
  final String name;
  final String address;

  MatchLocation({
    required this.name,
    required this.address,
  });

  factory MatchLocation.fromJson(Map<String, dynamic> json) =>
      _$MatchLocationFromJson(json);

  Map<String, dynamic> toJson() => _$MatchLocationToJson(this);
}