import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/home/ui/widgets/fields_carousel.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import '../../../../core/constants/dummy_data.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
import 'explore_areas_list.dart';
import 'field_type_selector.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ExploreAreasList(),

          verticalSpace(context, height: 6),
          const FieldTypeSelector(),

          verticalSpace(context, height: 16),

          SectionHeader(
            title: "متاح النهاردة بليل ",
            iconPath: Assets.nighticon,
            onViewAllTap: () => context.pushNamed(Routes.viewAllFieldsScreen, arguments: {
              'fields': dummyFields,
              'total': dummyFields.length,
              'totalPages': 1,
            })
          ),
          FieldsCarousel(fields: dummyFields, total: dummyFields.length, totalPages: 1,),

          verticalSpace(context, height: 32),

          SectionHeader(
            title: "الأكثر حجزاً هذا الأسبوع",
            iconPath: Assets.popular,
            onViewAllTap: () => context.pushNamed(Routes.viewAllFieldsScreen, arguments: {
              'fields': dummyFields,
              'total': dummyFields.length,
              'totalPages': 1,
            })
          ),
          verticalSpace(context, height: 16),
          FieldsCarousel(fields: dummyFields, total: dummyFields.length, totalPages: 1,),

          verticalSpace(context, height: 40),
        ],
      ),
    );
  }
}
