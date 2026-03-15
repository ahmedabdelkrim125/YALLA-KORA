import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class SearchFieldWithFilter extends StatelessWidget {
  const SearchFieldWithFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12.r(context)),
          decoration: BoxDecoration(
            color: AppColors.card2,
            borderRadius: BorderRadius.circular(12.r(context)),
          ),
          child: const Icon(Icons.tune, color: Colors.white),
        ),
        horizontalSpace(context, width: 12),
        Expanded(
          child: Container(
            height: 50.h(context),
            padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
            decoration: BoxDecoration(
              color: AppColors.card2,
              borderRadius: BorderRadius.circular(12.r(context)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "بتدور على ملعب فين...؟",
                      hintStyle: TextStyles.regularGrey12,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.search, color: Colors.white38),
              ],
            ),
          ),
        ),
      ],
    );
  }
}