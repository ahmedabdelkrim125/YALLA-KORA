import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class DiscountCodeSection extends StatefulWidget {
  const DiscountCodeSection({super.key});

  @override
  State<DiscountCodeSection> createState() => _DiscountCodeSectionState();
}

class _DiscountCodeSectionState extends State<DiscountCodeSection> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: DiscountTextField(controller: _controller)),
            horizontalSpace(context, width: 16),
            ApplyButton(onTap: () {}),
          ],
        ),
      ],
    );
  }
}

class DiscountTextField extends StatelessWidget {
  final TextEditingController controller;

  const DiscountTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h(context),
      child: TextField(
        controller: controller,
        textDirection: TextDirection.rtl,
        style: TextStyles.mediumWhite14,
        decoration: InputDecoration(
          hintText: 'اكتب الكود هنا...',
          hintStyle: TextStyles.regularWhite14.copyWith(
            color: AppColors.darkGrey,
          ),
          prefixIcon: Padding(
            padding: context.responsivePadding(all: 12),
            child: SvgPicture.asset(Assets.ticket),
          ),
          filled: true,
          fillColor: AppColors.card2,
          border: buildOutlineInputBorder(context),
          enabledBorder: buildOutlineInputBorder(context),
          focusedBorder: buildOutlineInputBorder(context, focused: true),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(
    BuildContext context, {
    bool focused = false,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r(context)),
      borderSide: BorderSide(
        color: focused
            ? AppColors.primaryGreen
            : Colors.white.withOpacity(0.12),
        width: focused ? 1.2 : 0.8,
      ),
    );
  }
}

class ApplyButton extends StatelessWidget {
  final VoidCallback onTap;

  const ApplyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: context.responsivePadding(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r(context)),
          ),
          backgroundColor: AppColors.primaryGreen.withOpacity(0.1),
          side: BorderSide(
            color: AppColors.primaryGreen.withOpacity(.5),
            width: 0.8,
          ),
        ),
        child: Text(
          'تطبيق',
          style: TextStyles.boldWhite14.copyWith(color: AppColors.primaryGreen),
        ),
      ),
    );
  }
}
