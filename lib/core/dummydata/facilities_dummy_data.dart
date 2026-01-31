import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/features/home/data/models/facility_model.dart';

final List<FacilityModel> dummyFacilities = [
  FacilityModel(
    id: "1",
    name: "ملعب أكتوبر",
    address: "أكتوبر",
    pricePerHour: 290,
    isAvailable: false,
    rating: 4.0,
    reviewsCount: 146,
    imageUrl: Assets.facilityOctober1,
  ),
  FacilityModel(
    id: "2",
    name: "ملعب أكتوبر",
    address: "أكتوبر",
    pricePerHour: 290,
    isAvailable: false,
    rating: 4.4,
    reviewsCount: 166,
    imageUrl: Assets.facilityOctober2,
  ),
  FacilityModel(
    id: "3",
    name: "ملعب المعادي",
    address: "المعادي",
    pricePerHour: 250,
    isAvailable: true,
    rating: 5.0,
    reviewsCount: 186,
    imageUrl: Assets.facilityMaddi1,
  ),
  FacilityModel(
    id: "4",
    name: "ملعب أكتوبر",
    address: "أكتوبر",
    pricePerHour: 290,
    isAvailable: false,
    rating: 5,
    reviewsCount: 180,
    imageUrl: Assets.facilityOctober3,
  ),
];
