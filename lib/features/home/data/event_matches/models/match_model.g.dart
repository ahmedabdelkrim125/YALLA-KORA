// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
  time: json['time'] as String,
  venue: json['venue'] as String,
  playersNeeded: (json['playersNeeded'] as num).toInt(),
  sharePrice: json['sharePrice'] as String,
);