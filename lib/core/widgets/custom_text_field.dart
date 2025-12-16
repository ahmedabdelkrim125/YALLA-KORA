import 'package:flutter/material.dart';
import '../helper/responsive_extensions.dart';
import '../helper/spacing.dart';
import '../theme/text_styles.dart';
import 'app_form_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.controller,
    this.validator,
    this.isPassword = false,
  });

  final String text;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
          child: Text(text, style: TextStyles.mediumWhite12),
        ),
        verticalSpace(context, height: 5),
        AppFormField(
          isPassword: isPassword,
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }
}
