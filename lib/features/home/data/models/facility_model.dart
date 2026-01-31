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

  factory FacilityModel.fromJson(Map<String, dynamic> json) {
    return FacilityModel(
      id: json['id'].toString(),
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      pricePerHour: (json['price_per_hour'] as num).toDouble(),
      isAvailable: json['is_available'] ?? false,
      rating: (json['rating'] as num).toDouble(),
      reviewsCount: json['reviews_count'] ?? 0,
      imageUrl: json['image_url'] ?? '',
    );
  }

}
