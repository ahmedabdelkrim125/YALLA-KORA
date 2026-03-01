// ─────────────────────────────────────────
//  FIELD PITCH IMAGE
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/features/home/ui/widgets/badge_chip.dart';

class FieldImage extends StatelessWidget {
  final String imagePath;
  final String badge;


  const FieldImage({
    super.key,
    required this.imagePath,
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      child: Stack(
        children: [
          SizedBox(
            height: 106,
            width: double.infinity,
            child: Image.asset(imagePath, fit: BoxFit.cover,),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: BadgeChip(label: badge),
          ),
        ],
      ),
    );
  }
}