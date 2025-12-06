import 'package:appointment_app/core/helper/responsive_extensions.dart';
import 'package:appointment_app/core/helper/spacing.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:appointment_app/features/signup/ui/widgets/phone_field.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class CustomAppPhoneFormField extends StatelessWidget {
  const CustomAppPhoneFormField({
    super.key,
    required this.phoneController,
  });

  final PhoneController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
          child: Text(
            'رقم الهاتف',
            style: TextStyles.mediumWhite12,
          ),
        ),
        verticalSpace(context, height: 5),
        AppPhoneFormField(
          controller: phoneController,
          validator: PhoneValidator.compose([
            PhoneValidator.required(context, errorText: 'من فضلك أدخل رقم الهاتف'),
            PhoneValidator.validMobile(context, errorText: 'رقم الهاتف غير صحيح'),
          ]),
        ),
      ],
    );
  }
}