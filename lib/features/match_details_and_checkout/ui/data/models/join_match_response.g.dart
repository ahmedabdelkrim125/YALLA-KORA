// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_match_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinMatchResponse _$JoinMatchResponseFromJson(Map<String, dynamic> json) =>
    JoinMatchResponse(
      match: Match.fromJson(json['match'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JoinMatchResponseToJson(JoinMatchResponse instance) =>
    <String, dynamic>{'match': instance.match};

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
  id: json['_id'] as String,
  creator: User.fromJson(json['creator'] as Map<String, dynamic>),
  field: MatchField.fromJson(json['field'] as Map<String, dynamic>),
  date: json['date'] as String,
  time: json['time'] as String,
  playersNeeded: (json['players_needed'] as num).toInt(),
  pricePerPlayer: (json['price_per_player'] as num).toInt(),
  players: (json['players'] as List<dynamic>)
      .map((e) => User.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: json['status'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
  '_id': instance.id,
  'creator': instance.creator,
  'field': instance.field,
  'date': instance.date,
  'time': instance.time,
  'players_needed': instance.playersNeeded,
  'price_per_player': instance.pricePerPlayer,
  'players': instance.players,
  'status': instance.status,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  '__v': instance.v,
};

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: json['_id'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'avatar': instance.avatar,
};

MatchField _$MatchFieldFromJson(Map<String, dynamic> json) => MatchField(
  id: json['_id'] as String,
  name: json['name'] as String,
  location: MatchLocation.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MatchFieldToJson(MatchField instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'location': instance.location,
    };

MatchLocation _$MatchLocationFromJson(Map<String, dynamic> json) =>
    MatchLocation(
      name: json['name'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$MatchLocationToJson(MatchLocation instance) =>
    <String, dynamic>{'name': instance.name, 'address': instance.address};
