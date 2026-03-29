import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/features/home/ui/widgets/event_matches_section_bloc_builder.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';
import '../../../core/theme/app_colors.dart' show AppColors;
import '../../../core/widgets/user_header/user_header.dart';
import 'widgets/near_facilities_section_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navBarBottomPadding =
        62.0 + 10.0 * 2 + MediaQuery.of(context).padding.bottom;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: AppColors.darkBackground,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const UserHeader(
                greeting: 'أهلاً بك عالمي,',
                userName: 'عمر إيهاب',
              ),
              Expanded(
                child: SingleChildScrollView(
                  // physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionHeader(
                        title: 'ملاعب قريبة منك',
                        iconPath: Assets.nearLocationIcon,
                      ),
                      NearFacilitiesSection(),
                      const SectionHeader(
                        title: 'كمل التقسيمة',
                        iconPath: Assets.handshakeIcon,
                      ),
                      EventMatchesSection(),
                      SizedBox(height: navBarBottomPadding),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}