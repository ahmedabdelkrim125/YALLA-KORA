import 'package:yalla_kora/core/constants/app_images.dart';
import '../../features/home/data/event_matches/models/match_model.dart';
import '../../features/home/data/near_facilities/model/field_model.dart';

final dummyFields = [
  FieldModel(
    id: '664f1a2b3c4d5e6f7a8b9c01',
    ownerId: '664f1a2b3c4d5e6f7a8b9c0e',
    name: 'ملعب الهدف',

    type: Type(
      id: '5x5',
      label: 'خماسي',
    ),

    pricePerHour: 300,
    rating: 4.5,
    reviewsCount: 12,

    location: Location(
      name: 'مدينة نصر',
      address: 'القاهرة - النزهة',
      lat: 30.0626,
      lng: 31.3219,
    ),

    images: const [
      Assets.facility6,
    ],

    features: [
      Feature(id: '1', name: 'نجيل صناعي'),
      Feature(id: '2', name: 'كافيتريا'),
    ],

    workingHours: WorkingHours(
      is24Hours: false,
      openTime: '09:00',
      closeTime: '23:00',
    ),

    status: 'active',
  ),

   FieldModel(
    id: '664f1a2b3c4d5e6f7a8b9c02',
    ownerId: '664f1a2b3c4d5e6f7a8b9c0f',
    name: 'ملعب النهضة',

    type: Type(
      id: '5x5',
      label: 'خماسي',
    ),

    pricePerHour: 350,
    rating: 4.7,
    reviewsCount: 18,

    location: Location(
      name: 'مدينة نصر',
      address: 'القاهرة - عباس العقاد',
      lat: 30.0500,
      lng: 31.3300,
    ),

    images: [
      Assets.facility6,
    ],

    features: [
      Feature(id: '1', name: 'نجيل صناعي'),
      Feature(id: '3', name: 'جراج سيارات'),
    ],

    workingHours: WorkingHours(
      is24Hours: false,
      openTime: '10:00',
      closeTime: '00:00',
    ),

    status: 'active',
  ),

   FieldModel(
    id: '664f1a2b3c4d5e6f7a8b9c03',
    ownerId: '664f1a2b3c4d5e6f7a8b9c10',
    name: 'ملعب الأبطال',

    type: Type(
      id: '7x7',
      label: 'سباعي',
    ),

    pricePerHour: 280,
    rating: 4.3,
    reviewsCount: 9,

    location: Location(
      name: 'العباسية',
      address: 'القاهرة - العباسية',
      lat: 30.0720,
      lng: 31.2773,
    ),

    images: [
      Assets.facility6,
    ],

    features: [
      Feature(id: '2', name: 'كافيتريا'),
    ],

    workingHours: WorkingHours(
      is24Hours: true,
      openTime: '00:00',
      closeTime: '00:00',
    ),

    status: 'active',
  ),
];

const dummyMatches = [
  MatchModel(
    time: 'اليوم, 9:00 م',
    venue: 'ملعب الهدف, الشيراتون',
    playersNeeded: 3,
    sharePrice: '30 ج',
  ),
  MatchModel(
    time: 'اليوم, 9:00 م',
    venue: 'ملعب الهدف, المعادي',
    playersNeeded: 2,
    sharePrice: '30 ج',
  ),
  MatchModel(
    time: 'اليوم, 9:00 م',
    venue: 'ملعب الهدف, الشيراتون',
    playersNeeded: 5,
    sharePrice: '30 ج',
  ),
];
