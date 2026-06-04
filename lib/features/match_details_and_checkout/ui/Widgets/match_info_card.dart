import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/ui/widgets/players_badge.dart';

class MatchInfoCard extends StatelessWidget {
  const MatchInfoCard({super.key, required this.fieldNameType, required this.fieldLocation, required this.playersNeeded, required this.pricePerPlayer, required this.fieldAddress});

  final String fieldNameType;
  final String fieldLocation;
  final String fieldAddress;
  final int playersNeeded;
  final String pricePerPlayer;

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
                Text(fieldNameType, style: TextStyles.boldWhite16),
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
                    Text(fieldLocation, style: TextStyles.regularMuted12),
                    Text(' - ', style: TextStyles.regularMuted12),
                    Text(fieldAddress, style: TextStyles.regularMuted8),
                  ],
                ),
                SizedBox(height: 8.h(context)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PlayersBadge(count: playersNeeded),
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
                child: Text('حصة الفرد: $pricePerPlayer ج', style: TextStyles.mediumMuted10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
