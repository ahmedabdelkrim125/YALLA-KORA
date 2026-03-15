import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import 'package:yalla_kora/features/search/ui/widgets/stadiums_list.dart';
import 'explore_areas_list.dart';
import 'field_type_selector.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ExploreAreasList(),
          
          verticalSpace(context, height: 24),
          const FieldTypeSelector(),
          
          verticalSpace(context, height: 32),
          
          const SectionHeader(title: "متاح النهاردة بليل ", iconPath: '',),
          verticalSpace(context, height: 16),
          const StadiumsList(), 
          
          verticalSpace(context, height: 32),
          
          const SectionHeader(title: "الأكثر حجزاً هذا الأسبوع", iconPath: '',),
          verticalSpace(context, height: 16),
          const StadiumsList(), 
          
          verticalSpace(context, height: 40),
        ],
      ),
    );
  }
}