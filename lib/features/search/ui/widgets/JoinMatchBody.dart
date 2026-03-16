import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import 'explore_areas_list.dart';
import 'field_type_selector.dart';
import 'join_match_list.dart';

class JoinMatchBody extends StatelessWidget {
  const JoinMatchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const ExploreAreasList(),
          verticalSpace(context, height: 24),
          const FieldTypeSelector(),
          verticalSpace(context, height: 32),

          const SectionHeader(
            title: "كَمّل التقسيمة ",
            iconPath: Assets.handshakeIcon,
          ),
          verticalSpace(context, height: 16),

          const JoinMatchList(),

          verticalSpace(context, height: 40),
        ],
      ),
    );
  }
}
