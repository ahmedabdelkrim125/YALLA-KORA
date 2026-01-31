import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import '../../../../core/theme/Text_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController? controller;

  const CustomSearchTextField({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        style: textStyle(),
        controller: controller,
        decoration: InputDecoration(
          fillColor: AppColors.darkGrey,
          filled: true,
          hintText: 'أبحث عن ملعب ....',
          hintStyle: textStyle(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(Assets.searchIcon),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(Assets.filterIcon),
          ),
          border: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  TextStyle textStyle() {
    return TextStyles.extraLight12.copyWith(
      color: AppColors.lightBlack,
    );
  }

  OutlineInputBorder outlineInputBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none,
  );
}