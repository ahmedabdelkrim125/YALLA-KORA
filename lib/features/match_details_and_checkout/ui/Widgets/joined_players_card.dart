import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';

class JoinedPlayersCard extends StatelessWidget {
  const JoinedPlayersCard({super.key, required this.player});
  final List<Player> player;
  final List<String> playerImages = const [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Mohamed_Salah_2018.jpg/400px-Mohamed_Salah_2018.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/400px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/400px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93129_%28cropped%29.jpg/400px-2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93129_%28cropped%29.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    const int totalSlots = 10;
    final int filledCount = playerImages.length;
    final double avatarSize = 54.w(context);
    final double overlap = 36.w(context);
    const int visibleEmpty = 2;
    final int visibleCount = filledCount + visibleEmpty;
    final double stackWidth = avatarSize + (visibleCount - 1) * overlap;

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
                    text: '(${player.length}/$totalSlots)',
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
            SizedBox(
              height: avatarSize,
              width: stackWidth,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ...List.generate(visibleEmpty, (i) {
                    final int stackIndex = visibleCount - 1 - i;
                    return Positioned(
                      left: stackIndex * overlap,
                      child: _buildEmptySlot(context, avatarSize),
                    );
                  }),
                  ...List.generate(filledCount, (i) {
                    final int stackIndex = filledCount - 1 - i;
                    return Positioned(
                      left: stackIndex * overlap,
                      child: _buildFilledSlot(
                        context,
                        playerImages[i],
                        avatarSize,
                      ),
                    );
                  }),
                ],
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

  Widget _buildFilledSlot(BuildContext context, String imageUrl, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: AppColors.card2),
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) =>
              Container(color: const Color(0xFF2A2B40)),
        ),
      ),
    );
  }
}
