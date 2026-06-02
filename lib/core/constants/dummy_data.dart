import 'package:yalla_kora/core/constants/app_images.dart';
import '../../features/home/data/event_matches/models/match_model.dart' as match;
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

final dummyMatches = [
  match.MatchModel(
    id: '664f1a2b3c4d5e6f7a8b9c30',
    creator: match.Creator(
      id: '664f1a2b3c4d5e6f7a8b9c0d',
      name: 'Ahmed',
      avatar: null,
    ),
    field: match.Field(
      id: '664f1a2b3c4d5e6f7a8b9c01',
      name: 'ملعب الكابيتانو',
      location: match.Location(
        name: 'مدينة نصر',
      ),
      type: '5x5',
    ),
    date: '2026-06-01',
    time: '21:00',
    playersNeeded: 10,
    pricePerPlayer: 30,
    players:  [
      match.Player(id: '664f1a2b3c4d5e6f7a8b9c0d', name: 'ahmed', avatar: null),
    ],
    status: 'open',
    spotsLeft: 9,
  ),

  match.MatchModel(
    id: '664f1a2b3c4d5e6f7a8b9c31',
    creator: match.Creator(
      id: '664f1a2b3c4d5e6f7a8b9c0e',
      name: 'Mohamed',
      avatar: null,
    ),
    field: match.Field(
      id: '664f1a2b3c4d5e6f7a8b9c02',
      name: 'ملعب الهدف',
      location: match.Location(
        name: 'الشيراتون',
      ),
      type: '5x5',
    ),
    date: '2026-06-02',
    time: '20:00',
    playersNeeded: 8,
    pricePerPlayer: 40,
    players: [],
    status: 'open',
    spotsLeft: 8,
  ),

   match.MatchModel(
    id: '664f1a2b3c4d5e6f7a8b9c32',
    creator: match.Creator(
      id: '664f1a2b3c4d5e6f7a8b9c0f',
      name: 'Omar',
      avatar: null,
    ),
    field: match.Field(
      id: '664f1a2b3c4d5e6f7a8b9c03',
      name: 'ملعب النجوم',
      location: match.Location(
        name: 'المعادي',
      ),
      type: '7x7',
    ),
    date: '2026-06-03',
    time: '22:00',
    playersNeeded: 14,
    pricePerPlayer: 50,
    players: [],
    status: 'open',
    spotsLeft: 5,
  ),
];
