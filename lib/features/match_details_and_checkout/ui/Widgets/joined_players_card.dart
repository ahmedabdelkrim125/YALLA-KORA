import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

import '../../../../core/constants/app_images.dart';

class JoinedPlayersCard extends StatelessWidget {
  const JoinedPlayersCard({super.key, required this.players, required this.totalPlayers, required this.playersJoined, required this.playersNeeded});
  final int totalPlayers;
  final int playersJoined;
  final int playersNeeded;
  final List<dynamic> players;

  @override
  Widget build(BuildContext context) {
    final double avatarSize = 54.w(context);
    final double overlap = 36.w(context);
    final int visibleEmpty = (totalPlayers - playersNeeded).abs();
    final int visibleCount = playersJoined;
    final double stackWidth = avatarSize + ((visibleCount + visibleEmpty) - 1) * overlap;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 335.w(context),
        padding: context.responsivePadding(
          top: 12,
          right: 16,
          bottom: 12,
          left: 16,
        ),
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(12.r(context)),
          border: Border.all(
            width: 1.w(context),
            color: AppColors.slateGray.withOpacity(0.3),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'اللعيبة المنضمة ',
                    style: TextStyles.boldWhite18.copyWith(height: 1.50),
                  ),
                  TextSpan(
                    text: '(${(playersJoined) + (totalPlayers - playersNeeded)}/$totalPlayers)',
                    style: TextStyles.regularPrimaryYellow15,
                  ),
                ],
              ),
            ),
            verticalSpace(context, height: 10),
            Divider(
              color: AppColors.slateGray.withOpacity(0.3),
              thickness: 1,
              height: 1,
            ),
            verticalSpace(context, height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: avatarSize,
                width: stackWidth,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ...List.generate(visibleEmpty, (i) {
                      final int stackIndex = players.length + i;
                      return Positioned.directional(
                        textDirection: TextDirection.rtl,
                        start: stackIndex * overlap,
                        child: _buildEmptySlot(context, avatarSize),
                      );
                    }),
                    ...List.generate(players.length, (i) {
                      final int stackIndex = players.length - 1 - i;
                      return Positioned.directional(
                        textDirection: TextDirection.rtl,
                        start: stackIndex * overlap,
                        child: _buildFilledSlot(
                          context,
                          players[i].avatar,
                          avatarSize,
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptySlot(BuildContext context, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFF2A2B40),
        border: Border.all(
          width: 1.5,
          color: AppColors.slateGray.withOpacity(0.4),
        ),
      ),
    );
  }

  Widget _buildFilledSlot(BuildContext context, String? imageUrl, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B40),
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: AppColors.card2),
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl ?? Assets.player2,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) =>
              Container(color: const Color(0xFF2A2B40)),
        ),
      ),
    );
  }
}
