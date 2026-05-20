// ══════════════════════════════════════════════════════
//  AVAILABLE TIMES SECTION
// ══════════════════════════════════════════════════════
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/facility-details/data/model/available_time_model.dart';
import 'package:yalla_kora/features/facility-details/logic/available_time_cubit.dart';

class AvailableTimesSection extends StatelessWidget {
  final List<Slot> slots;
  const AvailableTimesSection({super.key, required this.slots});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Container(
        padding: context.responsivePadding(
          top: 12,
          left: 12,
          right: 12,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(16.r(context)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('الأوقات المتاحة', style: TextStyles.boldWhite14),
                Text(
                  '6 أوقات متاحة', // todo: replace with dynamic count
                  style: TextStyles.regularWhite12.copyWith(
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
            verticalSpace(context, height: 12),
            // Time slots grid
            TimeSlotsGrid(slots: slots),
          ],
        ),
      ),
    );
  }
}

// ── Time slots grid ───────────────────────────────────
class TimeSlotsGrid extends StatelessWidget {
  final List<Slot> slots;
  const TimeSlotsGrid({super.key, required this.slots});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 19.w(context),
        runSpacing: 12.h(context),
        children: List.generate(
          slots.length,
          (i) => TimeSlotChip(slot: slots[i]),
        ),
      ),
    );
  }
}

// ── Time slot chip ────────────────────────────────────
class TimeSlotChip extends StatelessWidget {
  final Slot slot;
  const TimeSlotChip({super.key, required this.slot});

  @override
  Widget build(BuildContext context) {
    final isSelected = slot.isSelected;
    return GestureDetector(
      onTap: ()=> context.read<AvailableTimeCubit>().toggleSlot(slot),
      child: Container(
        width: 90.w(context),
        height: 50.h(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r(context)),
          border: Border.all(color: isSelected? AppColors.primaryGreen : Colors.white.withOpacity(0.1), width: 0.8),
        ),
        child: Center(child: Text(slot.time, style: TextStyles.boldWhite14)),
      ),
    );
  }
}
