import 'package:flutter/material.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/models/join_match_response.dart' as j;
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/utils/date_time_formatter.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/widgets/success_booking_widgets/booking_success_animation.dart';

class JoinMatchSuccessScreen extends StatelessWidget {
  const JoinMatchSuccessScreen({super.key, required this.match});
  final j.Match match;

  @override
  Widget build(BuildContext context) {
    final playersJoined = match.players.length;
    final totalPlayers = match.players.length + match.playersNeeded;

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
              _MatchDetailsCard(match: match),
              verticalSpace(context, height: 16),

              // ── Players section ──
              _PlayersSection(
                players: match.players,
                totalPlayers: totalPlayers,
                playersJoined: playersJoined,
              ),
              verticalSpace(context, height: 32),

              // ── Buttons ──
              AppButton(
                title: 'العودة للرئيسية',
                onPressed: () => context.pop(),
              ),
              verticalSpace(context, height: 12),
              _ShareButton(),
              verticalSpace(context, height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Match details card ────────────────────────────────
class _MatchDetailsCard extends StatelessWidget {
  const _MatchDetailsCard({required this.match});

  final j.Match match;

  @override
  Widget build(BuildContext context) {
    final playersJoined = match.players.length;
    final totalPlayers = match.players.length + match.playersNeeded;

    return Container(
      width: double.infinity,
      padding: context.responsivePadding(all: 16),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(16.r(context)),
        border: Border.all(color: Colors.white.withOpacity(0.06), width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('تفاصيل التقسيمة', style: TextStyles.boldWhite16),
          verticalSpace(context, height: 16),
          Divider(color: Colors.white.withOpacity(0.08), height: 1),
          verticalSpace(context, height: 16),

          _DetailRow(
            icon: Icons.calendar_month_outlined,
            label: 'التاريخ',
            value: '${DateTimeFormatter.dayFromDate(match.date)}، ${DateTimeFormatter.dateToArabic(match.date)}',
          ),
          verticalSpace(context, height: 12),
          _DetailRow(
            icon: Icons.access_time_rounded,
            label: 'الوقت',
            value: DateTimeFormatter.timeToArabic12Hour(match.time),
          ),
          verticalSpace(context, height: 12),
          _DetailRow(
            icon: Icons.group_outlined,
            label: 'حالة الفريق',
            value: '$playersJoined من $totalPlayers — فاضل ${match.playersNeeded}',
          ),
          verticalSpace(context, height: 12),
          _DetailRow(
            icon: Icons.payments_outlined,
            label: 'حصتك',
            value: '${match.pricePerPlayer} ج.م',
            valueColor: AppColors.primaryGreen,
          ),
        ],
      ),
    );
  }
}

// ── Detail row ────────────────────────────────────────
class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.muted, size: 18.r(context)),
        horizontalSpace(context, width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyles.regularGrey10),
            verticalSpace(context, height: 2),
            Text(
              value,
              style: TextStyles.boldWhite14.copyWith(
                color: valueColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ── Players section ───────────────────────────────────
class _PlayersSection extends StatelessWidget {
  const _PlayersSection({
    required this.players,
    required this.totalPlayers,
    required this.playersJoined,
  });

  final List<j.User> players;
  final int totalPlayers;
  final int playersJoined;

  @override
  Widget build(BuildContext context) {
    final double avatarSize = 40.w(context);
    final double overlap = 28.w(context);
    final int visibleEmpty = (totalPlayers - playersJoined).clamp(0, 3);
    final int visibleCount = players.length + visibleEmpty;
    final double stackWidth = avatarSize + (visibleCount - 1) * overlap;

    return Container(
      width: double.infinity,
      padding: context.responsivePadding(all: 16),
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(16.r(context)),
        border: Border.all(color: Colors.white.withOpacity(0.06), width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'اللاعبين المنضمين ',
                  style: TextStyles.boldWhite14,
                ),
                TextSpan(
                  text: '($playersJoined/$totalPlayers)',
                  style: TextStyles.regularPrimaryYellow15.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          verticalSpace(context, height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: avatarSize,
              width: stackWidth,
              child: Stack(
                children: [
                  // Empty slots
                  ...List.generate(visibleEmpty, (i) {
                    final int stackIndex = players.length + i;
                    return Positioned(
                      left: stackIndex * overlap,
                      child: _EmptySlot(size: avatarSize),
                    );
                  }),
                  // Filled players
                  ...List.generate(players.length, (i) {
                    final int stackIndex = players.length - 1 - i;
                    return Positioned(
                      left: stackIndex * overlap,
                      child: _PlayerCircle(
                        name: players[i].name,
                        avatarUrl: players[i].avatar?.toString(),
                        size: avatarSize,
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Player circle ─────────────────────────────────────
class _PlayerCircle extends StatelessWidget {
  const _PlayerCircle({
    required this.name,
    required this.size,
    this.avatarUrl,
  });

  final String name;
  final String? avatarUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    final initial = name.isNotEmpty ? name[0].toUpperCase() : '?';

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: AppColors.card2),
      ),
      child: ClipOval(
        child: avatarUrl != null
            ? Image.network(
          avatarUrl!,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => _buildInitials(initial),
        )
            : _buildInitials(initial),
      ),
    );
  }

  Widget _buildInitials(String initial) {
    return Container(
      color: AppColors.cardBg2,
      child: Center(
        child: Text(
          initial,
          style: TextStyle(
            color: AppColors.primaryGreen,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: 'Cairo',
          ),
        ),
      ),
    );
  }
}

// ── Empty slot ────────────────────────────────────────
class _EmptySlot extends StatelessWidget {
  const _EmptySlot({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.cardBg2,
        border: Border.all(
          width: 1.5,
          color: AppColors.slateGray.withOpacity(0.4),
        ),
      ),
    );
  }
}

// ── Share button ──────────────────────────────────────
class _ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w(context),
      height: 50.h(context),
      child: OutlinedButton.icon(
        onPressed: () {},
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