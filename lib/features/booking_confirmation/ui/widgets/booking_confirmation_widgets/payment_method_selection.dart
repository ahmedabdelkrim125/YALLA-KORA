import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class PaymentMethodSection extends StatefulWidget {
  const PaymentMethodSection({super.key});

  @override
  State<PaymentMethodSection> createState() => _PaymentMethodSectionState();
}

class _PaymentMethodSectionState extends State<PaymentMethodSection> {
  String _selected = 'cash';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaymentOption(
          icon: Assets.cash,
          label: 'الدفع كاش في الملعب',
          value: 'cash',
          selected: _selected,
          onTap: (v) {
            setState(() => _selected = v);
          },
        ),
        verticalSpace(context, height: 8),
        PaymentOption(
          icon: Assets.smartphone,
          label: 'محفظة إلكترونية (فودافون كاش)',
          value: 'vodafone',
          selected: _selected,
          onTap: (v) {
            setState(() => _selected = v);
          },
        ),
        verticalSpace(context, height: 8),
        PaymentOption(
          icon: Assets.wallet,
          label: 'محفظة يلا كورة (الرصيد: 150ج)',
          value: 'wallet',
          selected: _selected,
          onTap: (v) {
            setState(() => _selected = v);
          },
        ),
      ],
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String icon;
  final String label;
  final String value;
  final String selected;
  final ValueChanged<String> onTap;

  const PaymentOption({super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.selected,
    required this.onTap,
  });

  bool get isSelected => value == selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: context.responsivePadding(horizontal: 14, vertical: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r(context)),
          color: isSelected
            ? AppColors.primaryGreen.withOpacity(0.08)
            : AppColors.card2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              icon,
              color: isSelected ? AppColors.primaryGreen : null,
            ),
            horizontalSpace(context, width: 8),
            Expanded(
              child: Text(
                label,
                style: TextStyles.boldWhite14.copyWith(
                  color: isSelected ? Colors.white : AppColors.lightGray,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}