import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class RoleCard extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final String icon;
  final bool isSelected;
  final VoidCallback onTap;

  const RoleCard({
    super.key,
    required this.index,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 10, vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: double.infinity,
          height: 130.h(context),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(30.r(context)),
            border: Border.all(
              color: isSelected ? AppColors.primaryGreen : Colors.transparent,
              width: 1.5,
            ),
            boxShadow: isSelected
                ? []
                : [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ],
          ),
          child: Padding(
            padding: context.responsivePadding(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyles.boldDarkBackground18.copyWith(
                          color: AppColors.primaryGreen,
                        ),
                      ),
                      SizedBox(height: 6.h(context)),
                      Text(
                        subtitle,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyles.regularSlateGray12,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15.w(context)),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 80.w(context),
                  height: 80.h(context),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColors.primaryGreen.withOpacity(0.2)
                        : AppColors.darkBackground,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      icon,
                      width: 40.w(context),
                      height: 40.h(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}