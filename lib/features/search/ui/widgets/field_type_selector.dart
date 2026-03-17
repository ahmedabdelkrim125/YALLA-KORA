import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class FieldTypeSelector extends StatefulWidget {
  const FieldTypeSelector({super.key});

  @override
  State<FieldTypeSelector> createState() => _FieldTypeSelectorState();
}

class _FieldTypeSelectorState extends State<FieldTypeSelector> {
final List<String> fieldTypes = ["\u200E5 vs 5", "\u200E7 vs 7", "\u200E11 vs 11"];  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20),
      child: SizedBox(
        height: 35.h(context),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: fieldTypes.length,
          separatorBuilder: (context, index) => horizontalSpace(context, width: 12),
          itemBuilder: (context, index) {
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primaryGreen : AppColors.card2,
                  borderRadius: BorderRadius.circular(20.r(context)),
                  border: isSelected ? null : Border.all(color: AppColors.slateGray.withOpacity(0.3)),
                ),
                child: Center(
                  child: Text(
                    fieldTypes[index],
                    style: isSelected
                        ? TextStyles.boldDarkBackground12
                        : TextStyles.regularGrey12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}