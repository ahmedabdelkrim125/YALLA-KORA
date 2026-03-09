import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'tab_icon.dart';
import '../../../../core/helper/spacing.dart';

class SingleTab extends StatelessWidget {
  final String label;
  final String svgIcon;
  final bool isActive;

  const SingleTab({
    super.key,
    required this.label,
    required this.svgIcon,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      padding: EdgeInsets.symmetric(
        horizontal: context.responsiveWidth(20),
        vertical: context.responsiveHeight(8),
      ),
      decoration: ShapeDecoration(
        color: isActive ? AppColors.primaryGreen : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.responsiveRadius(12)),
        ),
        shadows: isActive ? _activeShadows(context) : const [],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabIcon(svgIcon: svgIcon, isActive: isActive),
          horizontalSpace(context, width: 6),
          Flexible(
            child: Text(
              label,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: isActive
                  ? TextStyles.extraBoldDark14
                  : TextStyles.extraBoldGrey14,
            ),
          ),
        ],
      ),
    );
  }

  List<BoxShadow> _activeShadows(BuildContext context) {
    return [
      BoxShadow(
        color: AppColors.primaryGreen.withValues(alpha: 0.2),
        blurRadius: context.responsiveRadius(16),
        spreadRadius: 0,
        offset: Offset(0, context.responsiveHeight(4)),
      ),
      BoxShadow(
        color: AppColors.primaryGreen.withValues(alpha: 0.2),
        blurRadius: context.responsiveRadius(28),
        spreadRadius: -2,
        offset: Offset(0, context.responsiveHeight(8)),
      ),
    ];
  }
}
