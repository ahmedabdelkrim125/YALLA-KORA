import 'package:json_annotation/json_annotation.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/field_model.dart';

part 'fields_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class FieldsResponse {
  final List<FieldModel> fields;
  final Pagination pagination;

  FieldsResponse({required this.fields, required this.pagination});

  factory FieldsResponse.fromJson(Map<String, dynamic> json) => _$FieldsResponseFromJson(json);
}

@JsonSerializable(genericArgumentFactories: true)
class Pagination {
  final int total;
  final int page;
  final int limit;
  final int pages;

  Pagination({
    required this.total,
    required this.page,
    required this.limit,
    required this.pages,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}