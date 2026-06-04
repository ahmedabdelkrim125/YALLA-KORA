import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/helper/spacing.dart';

class MatchOrganizerCard extends StatelessWidget {
  const MatchOrganizerCard({super.key, required this.organizer});
  final Creator organizer;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 335.w(context),
        height: 90.h(context),
        padding: context.responsivePadding(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(12.r(context)),
          border: Border.all(
            width: 0.8.w(context),
            color: AppColors.slateGray50,
          ),
        ),
        child: Row(
          children: [
            _buildAvatar(context, avatarUrl: organizer.avatar),
            horizontalSpace(context, width: 12),
            _buildOrganizerInfo(context, organizer.name),
            const Spacer(),
            //_buildRatingBox(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingBox(BuildContext context) {
    return Container(
      width: 45.w(context),
      height: 60.h(context),
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        borderRadius: BorderRadius.circular(14.r(context)),
        border: Border.all(width: 1.w(context), color: const Color(0xFF2A2A2A)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star_rounded,
            color: AppColors.yellow,
            size: 16.r(context),
          ),
          verticalSpace(context, height: 4),
          Text(
            '4.8',
            style: TextStyles.boldWhite14.copyWith(
              color: AppColors.yellow,
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrganizerInfo(BuildContext context, name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'منظم التقسيمة',
          style: TextStyles.regularMuted12.copyWith(height: 1.50),
        ),
        verticalSpace(context, height: 2),
        Text(
          'كابتن/ $name',
          style: TextStyles.boldWhite16.copyWith(height: 1.50),
        ),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context, {required avatarUrl}) {
    return Container(
      width: 50.w(context),
      height: 50.h(context),
      padding: EdgeInsets.all(1.5.w(context)),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5.w(context),
          color: AppColors.primaryGreen,
        ),
      ),
      child: ClipOval(
        child: Image.network(
          avatarUrl ?? Assets.player3,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) =>
              Container(color: AppColors.darkAvatarBg),
        ),
      ),
    );
  }
}
