// ─────────────────────────────────────────
//  FIELDS CAROUSEL
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/models/football-field-model/football_field_model.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/widgets/cards/field_card.dart';

import '../../../../core/helper/extensions.dart';

class FieldsCarousel extends StatelessWidget {
  final List<FootballFieldModel> fields;

  const FieldsCarousel({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        itemCount: fields.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, i) => GestureDetector(onTap:(){
          context.pushNamed(Routes.facilityDetails);
        },child: FieldCard(field: fields[i], isHorizontal: true,)),
      ),
    );
  }
}
