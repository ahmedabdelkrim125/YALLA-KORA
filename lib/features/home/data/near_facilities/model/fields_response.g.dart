// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldsResponse _$FieldsResponseFromJson(Map<String, dynamic> json) =>
    FieldsResponse(
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FieldModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FieldsResponseToJson(FieldsResponse instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'pagination': instance.pagination,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'pages': instance.pages,
    };
