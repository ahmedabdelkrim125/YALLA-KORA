// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldModel _$FieldModelFromJson(Map<String, dynamic> json) => FieldModel(
  id: json['id'] as String,
  ownerId: json['ownerId'] as String,
  name: json['name'] as String,
  type: Type.fromJson(json['type'] as Map<String, dynamic>),
  pricePerHour: (json['pricePerHour'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
  reviewsCount: (json['reviewsCount'] as num).toInt(),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  features: (json['features'] as List<dynamic>)
      .map((e) => Feature.fromJson(e as Map<String, dynamic>))
      .toList(),
  workingHours: WorkingHours.fromJson(
    json['workingHours'] as Map<String, dynamic>,
  ),
  status: json['status'] as String,
);

Map<String, dynamic> _$FieldModelToJson(FieldModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'name': instance.name,
      'type': instance.type,
      'pricePerHour': instance.pricePerHour,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'location': instance.location,
      'images': instance.images,
      'features': instance.features,
      'workingHours': instance.workingHours,
      'status': instance.status,
    };

Feature _$FeatureFromJson(Map<String, dynamic> json) =>
    Feature(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  name: json['name'] as String,
  address: json['address'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
};

Type _$TypeFromJson(Map<String, dynamic> json) =>
    Type(id: json['id'] as String, label: json['label'] as String);

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
};

WorkingHours _$WorkingHoursFromJson(Map<String, dynamic> json) => WorkingHours(
  is24Hours: json['is24Hours'] as bool,
  openTime: json['openTime'] as String,
  closeTime: json['closeTime'] as String,
);

Map<String, dynamic> _$WorkingHoursToJson(WorkingHours instance) =>
    <String, dynamic>{
      'is24Hours': instance.is24Hours,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
    };
