import 'package:appointment_app/core/helper/responsive_extensions.dart';
import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/core/widgets/app_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, required this.controller, this.validator, this.isPassword = false});

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
          child: Text(
            text,
            style: TextStyles.mediumWhite12,
          ),
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