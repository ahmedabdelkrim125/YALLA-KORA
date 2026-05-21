import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class MatchInfoCard extends StatelessWidget {
  const MatchInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w(context),
      padding: context.responsivePadding(all: 16),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(12.r(context)),
        border: Border(
          bottom: BorderSide(width: 2.w(context), color: AppColors.yellow),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: -2,
          ),
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: -1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ملعب الهدف - خماسي', style: TextStyles.boldWhite16),
                SizedBox(height: 8.h(context)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.muted,
                      size: 14.r(context),
                    ),
                    SizedBox(width: 4.w(context)),
                    Text('المعادي', style: TextStyles.regularMuted12),
                  ],
                ),
                SizedBox(height: 8.h(context)),
                Wrap(
                  spacing: 8.w(context),
                  runSpacing: 8.h(context),
                  children: [
                    _buildTag(context, 'نجيل صناعي', Icons.grass),
                    _buildTag(context, 'كرة قدم', Icons.sports_soccer),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: context.responsivePadding(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.cancelRed.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.r(context)),
                  border: Border.all(
                    width: 0.80.w(context),
                    color: AppColors.cancelRed.withOpacity(0.2),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.people_outline,
                      color: AppColors.cancelRed,
                      size: 12.r(context),
                    ),
                    SizedBox(width: 4.w(context)),
                    Text('ناقص 2 لعيبة', style: TextStyles.mediumCancelRed10),
                  ],
                ),
              ),
              SizedBox(height: 8.h(context)),
              Container(
                padding: context.responsivePadding(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF0A0A0A),
                  borderRadius: BorderRadius.circular(8.r(context)),
                  border: Border.all(
                    width: 0.80.w(context),
                    color: Colors.white.withOpacity(0.10),
                  ),
                ),
                child: Text('حصة الفرد: 30 ج', style: TextStyles.mediumMuted10),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTag(BuildContext context, String text, IconData icon) {
    return Container(
      padding: context.responsivePadding(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(8.r(context)),
        border: Border.all(
          width: 0.80.w(context),
          color: AppColors.slateGray.withOpacity(0.5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.primaryGreen, size: 14.r(context)),
          SizedBox(width: 4.w(context)),
          Text(text, style: TextStyles.mediumGrey12),
        ],
      ),
    );
  }
}
