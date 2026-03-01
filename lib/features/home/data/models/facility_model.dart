import 'package:freezed_annotation/freezed_annotation.dart';

part 'facility_model.g.dart';

@JsonSerializable()
class FacilityModel {
  final String id;
  final String name;
  final String address;
  final double pricePerHour;
  final bool isAvailable;
  final double rating;
  final int reviewsCount;
  final String imageUrl;

  FacilityModel({
    required this.id,
    required this.name,
    required this.address,
    required this.pricePerHour,
    required this.isAvailable,
    required this.rating,
    required this.reviewsCount,
    required this.imageUrl,
  });

  factory FacilityModel.fromJson(Map<String, dynamic> json) =>
      _$FacilityModelFromJson(json);

  Map<String, dynamic> toJson() => _$FacilityModelToJson(this);
}
