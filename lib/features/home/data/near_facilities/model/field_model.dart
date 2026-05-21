import 'package:json_annotation/json_annotation.dart';

part 'field_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class FieldModel{
  final String id;
  final String ownerId;
  final String name;
  final Type type;
  final int pricePerHour;
  final double rating;
  final int reviewsCount;
  final Location location;
  final List<String> images;
  final List<Feature> features;
  final WorkingHours workingHours;
  final String status;

  FieldModel({
    required this.id,
    required this.ownerId,
    required this.name,
    required this.type,
    required this.pricePerHour,
    required this.rating,
    required this.reviewsCount,
    required this.location,
    required this.images,
    required this.features,
    required this.workingHours,
    required this.status,
  });

  factory FieldModel.fromJson(Map<String, dynamic> json) => _$FieldModelFromJson(json);

}

@JsonSerializable(genericArgumentFactories: true)
class Feature {
  final String id;
  final String name;

  Feature({
    required this.id,
    required this.name,
  });

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class Location {
  final String name;
  final String address;
  final double lat;
  final double lng;

  Location({
    required this.name,
    required this.address,
    required this.lat,
    required this.lng,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class Type {
  final String id;
  final String label;

  Type({
    required this.id,
    required this.label,
  });

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class WorkingHours {
  final bool is24Hours;
  final String openTime;
  final String closeTime;

  WorkingHours({
    required this.is24Hours,
    required this.openTime,
    required this.closeTime,
  });

  factory WorkingHours.fromJson(Map<String, dynamic> json) => _$WorkingHoursFromJson(json);
}