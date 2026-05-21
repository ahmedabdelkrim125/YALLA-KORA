import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/booking_confirmation_widgets/section_card.dart';

class SuccessActionButtons extends StatelessWidget {
  final VoidCallback onDownload;
  final VoidCallback onShare;

  const SuccessActionButtons({
    super.key,
    required this.onDownload,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _OutlinedActionButton(
            label: 'مشاركة',
            icon: Assets.share,
            onTap: onShare,
          ),
        ),
        horizontalSpace(context, width: 12),
        // Download ticket button
        Expanded(
          child: _OutlinedActionButton(
            label: 'تحميل التذكرة',
            icon: Assets.download,
            onTap: onDownload,
          ),
        ),
      ],
    );
  }
}

class _OutlinedActionButton extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback onTap;

  const _OutlinedActionButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SectionCard(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            horizontalSpace(context, width: 8),
            Text(label, style: TextStyles.boldWhite14),
          ],
        ),
      ),
    );
  }
}
