// ─────────────────────────────────────────
//  FIELDS CAROUSEL
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/widgets/field_card.dart';

class FieldsCarousel extends StatelessWidget {
  final List<FieldModel> fields;

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
        itemBuilder: (context, i) => FieldCard(field: fields[i]),
      ),
    );
  }
}