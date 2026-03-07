// ─────────────────────────────────────────
//  SECTION HEADER
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String iconPath;

  const SectionHeader({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
      child: Row(
        children: [
          Text(title, style: TextStyles.boldWhite16),
          const SizedBox(width: 8),
          SvgPicture.asset(iconPath),
          const Spacer(),
          Text('عرض الكل', style: TextStyles.regularWhite12),
        ],
      ),
    );
  }
}
