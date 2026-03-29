import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/models/football-field-model/football_field_model.dart';
import '../../features/home/data/event_matches/models/match_model.dart';

const dummyFields = [
  FootballFieldModel(
    name: 'ملعب الهدف',
    price: '300 ج / الساعة',
    location: 'مدينة نصر',
    availability: 'متاح: 9م ، 11م',
    badge: 'خماسي',
    image: Assets.facility6,
  ),
  FootballFieldModel(
    name: 'ملعب النهضة',
    price: '350 ج / الساعة',
    location: 'مدينة نصر',
    availability: 'متاح: 9م ، 11م',
    badge: 'خماسي',
    image: Assets.facility6,
  ),
  FootballFieldModel(
    name: 'ملعب الأبطال',
    price: '280 ج / الساعة',
    location: 'العباسية',
    availability: 'متاح: 9م ، 11م',
    badge: 'خماسي',
    image: Assets.facility6,
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
