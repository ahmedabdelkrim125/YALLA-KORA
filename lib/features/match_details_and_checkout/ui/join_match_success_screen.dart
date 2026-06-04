import 'package:flutter/material.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/match_details_card.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/share_button.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/models/join_match_response.dart' as j;
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/booking_success_animation.dart';

import 'Widgets/joined_players_card.dart';

class JoinMatchSuccessScreen extends StatelessWidget {
  const JoinMatchSuccessScreen({super.key, required this.match});
  final j.Match match;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: context.responsivePadding(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              SizedBox(height: kToolbarHeight),

              // ── Animation ──
              const Center(child: BookingSuccessAnimation()),
              verticalSpace(context, height: 24),

              Text(
                'انضممت للتقسيمة!',
                style: TextStyles.extraBoldWhite24,
                textAlign: TextAlign.center,
              ),
              verticalSpace(context, height: 8),
              Text(
                'تم تأكيد مكانك بنجاح',
                style: TextStyles.regularWhite14.copyWith(color: AppColors.muted),
                textAlign: TextAlign.center,
              ),
              verticalSpace(context, height: 32),

              // ── Match details card ──
              MatchDetailsCard(
                match: match,
                playersJoined: match.playersJoined,
                totalPlayers: match.fieldCapacity
              ),
              verticalSpace(context, height: 16),

              // ── Players section ──
              JoinedPlayersCard(
                players: match.players,
                totalPlayers: match.fieldCapacity,
                playersJoined: match.playersJoined,
                playersNeeded: match.playersNeeded,
              ),
              verticalSpace(context, height: 32),

              // ── Buttons ──
              AppButton(
                title: 'العودة للرئيسية',
                onPressed: () => context.pop(),
              ),
              verticalSpace(context, height: 12),
              ShareButton(
                onPressed: () {

                },
              ),
              verticalSpace(context, height: 24),
            ],
          ),
        ),
      ),
    );
  }
}





