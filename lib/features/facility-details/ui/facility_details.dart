import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class FacilityDetails extends StatelessWidget {
  const FacilityDetails({super.key});

  static const _days = [
    DayModel(name: 'سبت',  number: 02, isSelected: false),
    DayModel(name: 'أحد',  number: 03, isSelected: false),
    DayModel(name: 'الإث', number: 04, isSelected: false),
    DayModel(name: 'ثلاث', number: 05, isSelected: false),
    DayModel(name: 'أرب',  number: 06, isSelected: true),
    DayModel(name: 'خمس',  number: 07, isSelected: false),
  ];

  static const _slots = [
    TimeSlotModel(time: 'ص7:00'),
    TimeSlotModel(time: 'ص9:00'),
    TimeSlotModel(time: 'ص1:00'),
    TimeSlotModel(time: 'م3:00', isSelected: true),
    TimeSlotModel(time: 'م2:00'),
    TimeSlotModel(time: 'م5:00'),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:  Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FieldHeroImage(),

              // ── Field info ──
              verticalSpace(context, height: 20),
              FieldInfoSection(
                name: 'ملاعب الكابيتانو',
                rating: 4.8,
                reviewCount: 1251,
                price: 300,
                isOpen: true,
              ),

              // ── Tab bar ──
              verticalSpace(context, height: 28),
              FieldTabBar(days: _days, slots: _slots,),
            ],
          ),
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

          SizedBox(
            height: 200, // لازم تحدد ارتفاع
            child: TabBarView(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      // ── Month header + calendar ──
                      SizedBox(height: 20),
                      CalendarStrip(
                        month: 'فبراير 2026',
                        days: days,
                      ),

                      // ── Available times ──
                      SizedBox(height: 20),
                      AvailableTimesSection(slots: slots),

                      // ── Bottom padding for FAB ──
                      SizedBox(height: 100),

                      // ── Sticky booking bar ──
                      BookingBottomBar(price: 300),
                    ],
                  ),
                ),
                Expanded(child: Icon(Icons.hail_outlined)),
              ],
            ),
          ),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Month header + arrows
          CalendarMonthHeader(month: month),
          const SizedBox(height: 14),
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
        const CalendarNavArrow(icon: Icons.chevron_left_rounded),
        const Spacer(),
        Text(month, style: TextStyles.mediumWhite12),
        const Spacer(),
        const CalendarNavArrow(icon: Icons.chevron_right_rounded),
      ],
    );
  }
}

// ── Calendar nav arrow ────────────────────────────────
class CalendarNavArrow extends StatelessWidget {
  final IconData icon;
  const CalendarNavArrow({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30, height: 30,
      decoration: BoxDecoration(
        color: AppColors.card2,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: AppColors.muted, size: 18),
    );
  }
}

// ── Day cell ──────────────────────────────────────────
class DayCell extends StatelessWidget {
  final DayModel day;
  const DayCell({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 46,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: day.isSelected ? AppColors.lightGray : AppColors.darkGreen,
        borderRadius: BorderRadius.circular(12),
        border: day.isSelected
            ? null
            : Border.all(color: AppColors.darkGreen, width: 1),
      ),
      child: Column(
        children: [
          Text(
            day.name,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: day.isSelected ? Colors.black : AppColors.muted,
              fontFamily: 'Cairo',
            ),
          ),
          const SizedBox(height: 4),
          Text(
            day.number.toString().padLeft(2, '0'),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: day.isSelected ? Colors.black : Colors.white,
              fontFamily: 'Cairo',
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                width: 4, height: 16,
                decoration: BoxDecoration(
                  color: AppColors.slateGray,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text('6 أوقات متاحة', style: TextStyles.mediumWhite12),
            ],
          ),
          const SizedBox(height: 14),
          // Time slots grid
          TimeSlotsGrid(slots: slots),
        ],
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
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.4,
      ),
      itemCount: slots.length,
      itemBuilder: (_, i) => TimeSlotChip(slot: slots[i]),
    );
  }
}

// ── Time slot chip ────────────────────────────────────
class TimeSlotChip extends StatelessWidget {
  final TimeSlotModel slot;
  const TimeSlotChip({super.key, required this.slot});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: slot.isSelected ? AppColors.slateGray.withOpacity(0.15) : AppColors.slateGray,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: slot.isSelected ? AppColors.slateGray : AppColors.slateGray,
          width: slot.isSelected ? 1.5 : 1,
        ),
      ),
      child: Center(
        child: Text(
          slot.time,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: slot.isSelected ? AppColors.slateGray : Colors.white,
            fontFamily: 'Cairo',
          ),
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        border: const Border(top: BorderSide(color: AppColors.slateGray)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(
        16, 14, 16,
        MediaQuery.of(context).padding.bottom + 14,
      ),
      child: Row(
        children: [
          // Price info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$price ج ',
                        style: TextStyles.mediumWhite12.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: '/ الساعة',
                        style: TextStyles.mediumWhite12,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                Text('احجز حسب الوقت المختار', style: TextStyles.mediumWhite12),
              ],
            ),
          ),
          // Book button
          const BookFieldButton(),
        ],
      ),
    );
  }
}

// ── Book field button ─────────────────────────────────
class BookFieldButton extends StatelessWidget {
  const BookFieldButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.slateGray,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
      ),
      child: const Text(
        'احجز الملعب',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w900,
          fontFamily: 'Cairo',
        ),
      ),
    );
  }
}