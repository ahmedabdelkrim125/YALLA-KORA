import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.g.dart';
@JsonSerializable()
class MatchModel {
  @JsonKey(name: "_id")
  final String id;
  @JsonKey(name: "creator")
  final Creator creator;
  @JsonKey(name: "field")
  final Field field;
  @JsonKey(name: "date")
  final String date;
  @JsonKey(name: "time")
  final String time;
  @JsonKey(name: 'field_capacity')
  final int fieldCapacity;
  @JsonKey(name: "players_needed")
  final int playersNeeded;
  @JsonKey(name: "price_per_player")
  final int pricePerPlayer;
  @JsonKey(name: "players")
  final List<Player> players;
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "players_joined")
  final int playersJoined;
  @JsonKey(name: "spots_left")
  final int spotsLeft;

  MatchModel({
    required this.id,
    required this.creator,
    required this.field,
    required this.date,
    required this.time,
    required this.playersNeeded,
    required this.pricePerPlayer,
    required this.players,
    required this.status,
    required this.spotsLeft,
    required this.fieldCapacity,
    required this.playersJoined,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) => _$MatchModelFromJson(json);

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}

@JsonSerializable()
class Creator {
  @JsonKey(name: "_id")
  final String id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "avatar")
  final dynamic avatar;

  Creator({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory Creator.fromJson(Map<String, dynamic> json) => _$CreatorFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}

@JsonSerializable()
class Field {
  @JsonKey(name: "_id")
  final String id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "location")
  final Location location;
  @JsonKey(name: "type")
  final String type;
  final List<String> images;

  Field({
    required this.id,
    required this.name,
    required this.location,
    required this.type, required this.images,
  });

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "address")
  final String address;

  Location({
    required this.name, required this.address,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Player {
  @JsonKey(name: "_id")
  final String id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "avatar")
  final dynamic avatar;

  Player({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
