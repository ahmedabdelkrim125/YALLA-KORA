import 'package:json_annotation/json_annotation.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';

part 'matches_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class MatchesResponse {
  final List<MatchModel> matches;
  final Pagination pagination;

  MatchesResponse({required this.matches, required this.pagination});

  factory MatchesResponse.fromJson(Map<String, dynamic> json) => _$MatchesResponseFromJson(json);
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