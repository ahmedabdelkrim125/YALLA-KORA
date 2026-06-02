// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
  id: json['_id'] as String,
  creator: Creator.fromJson(json['creator'] as Map<String, dynamic>),
  field: Field.fromJson(json['field'] as Map<String, dynamic>),
  date: json['date'] as String,
  time: json['time'] as String,
  playersNeeded: (json['players_needed'] as num).toInt(),
  pricePerPlayer: (json['price_per_player'] as num).toInt(),
  players: (json['players'] as List<dynamic>)
      .map((e) => Player.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: json['status'] as String,
  spotsLeft: (json['spots_left'] as num).toInt(),
);

Map<String, dynamic> _$MatchModelToJson(MatchModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'creator': instance.creator,
      'field': instance.field,
      'date': instance.date,
      'time': instance.time,
      'players_needed': instance.playersNeeded,
      'price_per_player': instance.pricePerPlayer,
      'players': instance.players,
      'status': instance.status,
      'spots_left': instance.spotsLeft,
    };

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
  id: json['_id'] as String,
  name: json['name'] as String,
  avatar: json['avatar'],
);

Map<String, dynamic> _$CreatorToJson(Creator instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'avatar': instance.avatar,
};

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
  id: json['_id'] as String,
  name: json['name'] as String,
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  type: json['type'] as String,
);

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'type': instance.type,
};

Location _$LocationFromJson(Map<String, dynamic> json) =>
    Location(name: json['name'] as String);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
};

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
  id: json['_id'] as String,
  name: json['name'] as String,
  avatar: json['avatar'],
);

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'avatar': instance.avatar,
};
