import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/ui/widgets/section_header.dart';

class ExploreAreasList extends StatelessWidget {
  const ExploreAreasList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(
          title: "استكشف المناطق",
          iconPath: Assets.nearLocationIcon,
          isViewAll: false,
        ),
        SizedBox(
          height: 100.h(context),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: context.responsivePadding(horizontal: 20),
            itemCount: 5,
            separatorBuilder: (context, index) =>
                horizontalSpace(context, width: 16),
            itemBuilder: (context, index) => _buildAreaItem(context, "التجمع"),
          ),
        ),
      ],
    );
  }

  Widget _buildAreaItem(BuildContext context, String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.r(context),
          backgroundColor: AppColors.card2,
          child: SvgPicture.asset(Assets.locationIcon, width: 24.w(context)),
        ),
        verticalSpace(context, height: 8),
        Text(name, style: TextStyles.mediumWhite12),
      ],
    );
  }
}
