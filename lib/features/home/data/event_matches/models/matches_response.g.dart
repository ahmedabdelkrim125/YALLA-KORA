// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchesResponse _$MatchesResponseFromJson(Map<String, dynamic> json) =>
    MatchesResponse(
      matches: (json['matches'] as List<dynamic>)
          .map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$MatchesResponseToJson(MatchesResponse instance) =>
    <String, dynamic>{
      'matches': instance.matches,
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
