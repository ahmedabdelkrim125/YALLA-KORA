import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/widgets/fields_carousel.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import 'explore_areas_list.dart';
import 'field_type_selector.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});
  static const _fields = [
    FieldModel(
      name: 'ملعب الهدف',
      price: '300 ج / الساعة',
      location: 'مدينة نصر',
      availability: 'متاح: 9م ، 11م',
      badge: 'خماسي',
      image: Assets.facility6,
    ),
    FieldModel(
      name: 'ملعب النهضة',
      price: '350 ج / الساعة',
      location: 'مدينة نصر',
      availability: 'متاح: 9م ، 11م',
      badge: 'خماسي',
      image: Assets.facility6,
    ),
    FieldModel(
      name: 'ملعب الأبطال',
      price: '280 ج / الساعة',
      location: 'العباسية',
      availability: 'متاح: 9م ، 11م',
      badge: 'خماسي',
      image: Assets.facility6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ExploreAreasList(),

          verticalSpace(context, height: 24),
          const FieldTypeSelector(),

          verticalSpace(context, height: 32),

          const SectionHeader(
            title: "متاح النهاردة بليل ",
            iconPath: Assets.nighticon,
          ),
          verticalSpace(context, height: 16),
          FieldsCarousel(fields: _fields),

          verticalSpace(context, height: 32),

          const SectionHeader(
            title: "الأكثر حجزاً هذا الأسبوع",
            iconPath: Assets.popular,
          ),
          verticalSpace(context, height: 16),
          FieldsCarousel(fields: _fields),

          verticalSpace(context, height: 40),
        ],
      ),
    );
  }
}
