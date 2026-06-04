// ── Share button ──────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key, required this.onPressed});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w(context),
      height: 50.h(context),
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: BorderSide(
            color: Colors.white.withOpacity(0.3),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
          ),
        ),
        icon: const Icon(Icons.share_outlined, size: 18),
        label: Text('مشاركة التقسيمة', style: TextStyles.mediumWhite14),
      ),
    );
  }
}