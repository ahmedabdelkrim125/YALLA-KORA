import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/field_hero_image.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/field_info_section.dart';
import 'package:yalla_kora/features/facility-details/ui/widgets/field_tab_bar.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/field_model.dart';

class FacilityDetails extends StatelessWidget {
  const FacilityDetails({super.key, required this.field});

  final FieldModel field;
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
              name: field.name,
              rating: field.rating,
              reviewCount: field.reviewsCount,
              price: field.pricePerHour,
              openTime: field.workingHours.openTime,
              closeTime: field.workingHours.closeTime,
            ),

            verticalSpace(context, height: 28),

            Expanded(
              child: FieldTabBar(
                field: field,
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