import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/home/ui/widgets/fields_carousel.dart';
import 'package:yalla_kora/features/home/ui/widgets/matches_list.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import '../../../core/models/football-field-model/football_field_model.dart' show FootballFieldModel;
import '../../../core/theme/app_colors.dart' show AppColors;
import '../../../core/widgets/user_header/user_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _fields = [
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

  static const _matches = [
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

  @override
  Widget build(BuildContext context) {
    final navBarBottomPadding =
        62.0 + 10.0 * 2 + MediaQuery.of(context).padding.bottom;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: AppColors.darkBackground,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const UserHeader(
                greeting: 'أهلاً بك عالمي,',
                userName: 'عمر إيهاب',
              ),
              Expanded(
                child: SingleChildScrollView(
                  // physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionHeader(
                        title: 'ملاعب قريبة منك',
                        iconPath: Assets.nearLocationIcon,
                      ),
                      FieldsCarousel(fields: _fields),
                      const SectionHeader(
                        title: 'كمل التقسيمة',
                        iconPath: Assets.handshakeIcon,
                      ),
                      MatchesList(matches: _matches),
                      SizedBox(height: navBarBottomPadding),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
