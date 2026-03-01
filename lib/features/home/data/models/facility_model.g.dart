// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacilityModel _$FacilityModelFromJson(Map<String, dynamic> json) =>
    FacilityModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      pricePerHour: (json['pricePerHour'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool,
      rating: (json['rating'] as num).toDouble(),
      reviewsCount: (json['reviewsCount'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$FacilityModelToJson(FacilityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'pricePerHour': instance.pricePerHour,
      'isAvailable': instance.isAvailable,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'imageUrl': instance.imageUrl,
    };
