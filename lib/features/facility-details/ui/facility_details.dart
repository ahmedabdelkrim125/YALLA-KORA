import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';

class FacilityDetails extends StatelessWidget {
  const FacilityDetails({super.key});

  static const _days = [
    DayModel(name: 'سبت',  number: 02, isSelected: false),
    DayModel(name: 'أحد',  number: 03, isSelected: false),
    DayModel(name: 'اثنين', number: 04, isSelected: false),
    DayModel(name: 'ثلاثاء', number: 05, isSelected: false),
    DayModel(name: 'اربع',  number: 06, isSelected: true),
    DayModel(name: 'خميس',  number: 07, isSelected: false),
  ];

  static const _slots = [
    TimeSlotModel(time: '7:00م'),
    TimeSlotModel(time: '9:00م'),
    TimeSlotModel(time: '1:00ص'),
    TimeSlotModel(time: '3:00م'),
    TimeSlotModel(time: '2:00م'),
    TimeSlotModel(time: '5:00م'),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            FieldHeroImage(),
            verticalSpace(context, height: 20),

            FieldInfoSection(
              name: 'ملاعب الكابيتانو',
              rating: 4.8,
              reviewCount: 1251,
              price: 300,
              isOpen: true,
            ),

            verticalSpace(context, height: 28),

            Expanded(
              child: FieldTabBar(
                days: _days,
                slots: _slots,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// ══════════════════════════════════════════════════════
//  MODELS
// ══════════════════════════════════════════════════════
class DayModel {
  final String name;
  final int    number;
  final bool   isSelected;
  const DayModel({required this.name, required this.number, required this.isSelected});
}

class TimeSlotModel {
  final String time;
  final bool   isSelected;
  const TimeSlotModel({required this.time, this.isSelected = false});
}


// ══════════════════════════════════════════════════════
//  HERO IMAGE
// ══════════════════════════════════════════════════════
class FieldHeroImage extends StatelessWidget {
  const FieldHeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Pitch background
          Image.asset(Assets.facility6, fit: BoxFit.cover),

          // Top bar: back + image counter + favorite
          Positioned(
            top: 0, left: 0, right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HeroCircleButton(icon: Icons.arrow_back_ios),
                    const HeroCircleButton(icon: Icons.favorite_border_rounded, color: AppColors.slateGray,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Hero circle button ────────────────────────────────
class HeroCircleButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  const HeroCircleButton({super.key, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40, height: 40,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.45),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: color ?? Colors.white, size: 20),
    );
  }
}

// ══════════════════════════════════════════════════════
//  FIELD INFO SECTION
// ══════════════════════════════════════════════════════
class FieldInfoSection extends StatelessWidget {
  final String name;
  final double rating;
  final int    reviewCount;
  final int    price;
  final bool   isOpen;

  const FieldInfoSection({
    super.key,
    required this.name,
    required this.rating,
    required this.reviewCount,
    required this.price,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: TextStyles.boldWhite20),
              FieldPriceTag(price: price),
            ],
          ),
          verticalSpace(context, height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OpenStatusBadge(isOpen: isOpen),
              RatingRow(rating: rating, reviewCount: reviewCount),
            ],
          ),
          verticalSpace(context, height: 6),
        ],
      ),
    );
  }
}

// ── Open status badge ─────────────────────────────────
class OpenStatusBadge extends StatelessWidget {
  final bool isOpen;
  const OpenStatusBadge({super.key, required this.isOpen});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.8, color: Colors.white.withOpacity(0.05))
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h(context), horizontal: 2.w(context)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.timeIcon, color: AppColors.primaryGreen,),
            horizontalSpace(context, width: 4),
            Text(
              isOpen ? 'مفتوح 24 ساعة' : 'مغلق',
              style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Rating row ────────────────────────────────────────
class RatingRow extends StatelessWidget {
  final double rating;
  final int    reviewCount;
  const RatingRow({super.key, required this.rating, required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.star_rounded, color: Color(0xFFFFC107), size: 20),
        horizontalSpace(context, width: 4),
        RichText(
          text: TextSpan(
          children: [
            TextSpan(
              text:rating.toStringAsFixed(1),
              style: TextStyles.boldWhite14,
            ),
            TextSpan(text: ' '),
            TextSpan(
              text: '($reviewCountتقييم)',
              style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey)
            ),
          ],
        ),),
      ],
    );
  }
}

// ── Field price tag ───────────────────────────────────
class FieldPriceTag extends StatelessWidget {
  final int price;
  const FieldPriceTag({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$price ج',
            style: TextStyles.boldWhite20,
          ),
          TextSpan(
            text:'/ الساعة',
            style: TextStyles.mediumWhite12.copyWith(color: AppColors.grey)
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════
//  TAB BAR
// ══════════════════════════════════════════════════════
class FieldTabBar extends StatelessWidget {
  const FieldTabBar({super.key, required this.days, required this.slots});

  final List<DayModel> days;
  final List<TimeSlotModel> slots;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w(context)),
            child: TabBar(
              indicatorColor: AppColors.primaryGreen,
              labelColor: Colors.white,
              dividerHeight: 0,
              unselectedLabelColor: AppColors.grey,
              tabs: const [
                Tab(text: 'التفاصيل'),
                Tab(text: 'الحجوزات المتاحة'),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              children: [
                // todo add details page
                AvailableBookings(days: days, slots: slots),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvailableBookings extends StatelessWidget {
  const AvailableBookings({
    super.key,
    required this.days,
    required this.slots,
  });

  final List<DayModel> days;
  final List<TimeSlotModel> slots;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ── Month header + calendar ──
          verticalSpace(context, height: 20),
          CalendarStrip(
            month: 'فبراير 2026',
            days: days,
          ),

          // ── Available times ──
          verticalSpace(context, height: 20),
          AvailableTimesSection(slots: slots),

          verticalSpace(context, height: 24),

          // ── Sticky booking bar ──
          BookingBottomBar(price: 300),
          verticalSpace(context, height: 60),
        ],
      ),
    );
  }
}

// ── Single tab ────────────────────────────────────────
class FieldTab extends StatelessWidget {
  final String label;
  final bool   isActive;
  const FieldTab({super.key, required this.label, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Tab(

      child: Text(
        label,
        textAlign: TextAlign.center,
        style: isActive ? TextStyles.boldWhite14
            : TextStyles.boldWhite14.copyWith(color: AppColors.grey)
      ),
    );
  }
}

// ══════════════════════════════════════════════════════
//  CALENDAR STRIP
// ══════════════════════════════════════════════════════
class CalendarStrip extends StatelessWidget {
  final String          month;
  final List<DayModel>  days;
  const CalendarStrip({super.key, required this.month, required this.days});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Month header + arrows
          CalendarMonthHeader(month: month),
          verticalSpace(context, height: 8),
          // Day cells
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: days.map((d) => DayCell(day: d)).toList(),
          ),
        ],
      ),
    );
  }
}

// ── Month header ──────────────────────────────────────
class CalendarMonthHeader extends StatelessWidget {
  final String month;
  const CalendarMonthHeader({super.key, required this.month});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(month, style: TextStyles.boldWhite18),
        const Spacer(),
        const CalendarNavArrow(icon: Icons.chevron_left_rounded, color: AppColors.muted,),
        horizontalSpace(context, width: 8),
        const CalendarNavArrow(icon: Icons.chevron_right_rounded, color: Colors.white,),
      ],
    );
  }
}

// ── Calendar nav arrow ────────────────────────────────
class CalendarNavArrow extends StatelessWidget {
  final IconData icon;
  final Color color;
  const CalendarNavArrow({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: 20);
  }
}

// ── Day cell ──────────────────────────────────────────
class DayCell extends StatelessWidget {
  final DayModel day;
  const DayCell({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, height: 75,
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(20.r(context)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day.name,
            style: TextStyles.mediumWhite12,
          ),
          verticalSpace(context, height: 4),
          Container(
            padding: context.responsivePadding(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r(context)),
              color: AppColors.cardBg2,
            ),
            child: Text(
              day.number.toString().padLeft(2, '0'),
              style: TextStyles.semiBoldWhite18,
            ),
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════
//  AVAILABLE TIMES SECTION
// ══════════════════════════════════════════════════════
class AvailableTimesSection extends StatelessWidget {
  final List<TimeSlotModel> slots;
  const AvailableTimesSection({super.key, required this.slots});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Container(
        padding: context.responsivePadding(top: 12, left: 12, right: 12, bottom: 20),
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
                Text('6 أوقات متاحة', style: TextStyles.regularWhite12.copyWith(color: AppColors.grey)),
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
  final List<TimeSlotModel> slots;
  const TimeSlotsGrid({super.key, required this.slots});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 19,
        runSpacing: 12,
        children: List.generate(slots.length, (i)=>TimeSlotChip(slot: slots[i])),
      ),
    );
  }
}

// ── Time slot chip ────────────────────────────────────
class TimeSlotChip extends StatelessWidget {
  final TimeSlotModel slot;
  const TimeSlotChip({super.key, required this.slot});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w(context), height: 50.h(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r(context)),
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
          width: 0.8,
        ),
      ),
      child: Center(
        child: Text(
          slot.time,
          style: TextStyles.boldWhite14,
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════
//  BOOKING BOTTOM BAR
// ══════════════════════════════════════════════════════
class BookingBottomBar extends StatelessWidget {
  final int price;
  const BookingBottomBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16.w(context)),
      child: Row(
        children: [
          Expanded(flex:3,child: AppButton(title: 'حجز الملعب', onPressed: () {  },)),
          horizontalSpace(context, width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$price ج ',
                      style: TextStyles.boldWhite20,
                    ),
                    TextSpan(
                      text: '/ الساعة',
                      style: TextStyles.mediumWhite12.copyWith(color: AppColors.muted),
                    ),
                  ],
                ),
              ),
              Text('السعر حسب الوقت المختار', style: TextStyles.regularGrey10),
            ],
          ),
          // Book button
        ],
      ),
    );
  }
}