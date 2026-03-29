import 'package:freezed_annotation/freezed_annotation.dart';

part 'football_field_model.g.dart';

@JsonSerializable()
class FootballFieldModel {
  final String name, price, location, availability, badge, image;

  const FootballFieldModel({
    required this.name,
    required this.price,
    required this.location,
    required this.availability,
    required this.badge,
    required this.image,
  });
  factory FootballFieldModel.fromJson(Map<String, dynamic> json) =>
      _$FootballFieldModelFromJson(json);
}
