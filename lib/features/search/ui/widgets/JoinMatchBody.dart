import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import '../../../../core/constants/dummy_data.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
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
          verticalSpace(context, height: 6),
          const FieldTypeSelector(),
          verticalSpace(context, height: 16),

          SectionHeader(
            title: "كَمّل التقسيمة ",
            iconPath: Assets.handshakeIcon,
            onViewAllTap: () => context.pushNamed(Routes.viewAllMatchesScreen, arguments: dummyMatches),
          ),

          const JoinMatchList(),

          verticalSpace(context, height: 40),
        ],
      ),
    );
  }
}
