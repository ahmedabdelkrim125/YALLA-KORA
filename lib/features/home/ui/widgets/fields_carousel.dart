// ─────────────────────────────────────────
//  FIELDS CAROUSEL
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/cards/field_card.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/extensions.dart';
import '../../data/near_facilities/model/field_model.dart';

class FieldsCarousel extends StatelessWidget {
  final List<FieldModel> fields;

  const FieldsCarousel({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: 'ملاعب قريبة منك',
          iconPath: Assets.nearLocationIcon,
          onViewAllTap: () => context.pushNamed(Routes.viewAllFieldsScreen, arguments: fields),
        ),
        fields.isEmpty ?
        SizedBox(height: 240,
          child: Center(child: Text(
              'لا يوجد ملاعب حتي الان...', style: TextStyles.boldWhite20,
              overflow: TextOverflow.ellipsis,)),)
        :SizedBox(
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            itemCount: fields.length > 5 ? 5 : fields.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, i) => GestureDetector(onTap:(){
              context.pushNamed(Routes.facilityDetails, arguments: fields[i]);
            },child: FieldCard(field: fields[i], isHorizontal: true,)),
          ),
        ),
      ],
    );
  }
}
