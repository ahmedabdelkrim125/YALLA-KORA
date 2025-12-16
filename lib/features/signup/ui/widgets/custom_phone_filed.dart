import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:yalla_kora/core/helper/spacing.dart' show verticalSpace;
import 'package:yalla_kora/features/signup/ui/widgets/phone_field.dart';

import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/text_styles.dart';

class CustomAppPhoneFormField extends StatelessWidget {
  const CustomAppPhoneFormField({super.key, required this.phoneController});

  final PhoneController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w(context)),
          child: Text('رقم الهاتف', style: TextStyles.mediumWhite12),
        ),
        verticalSpace(context, height: 5),
        AppPhoneFormField(
          controller: phoneController,
          validator: PhoneValidator.compose([
            PhoneValidator.required(
              context,
              errorText: 'من فضلك أدخل رقم الهاتف',
            ),
            PhoneValidator.validMobile(
              context,
              errorText: 'رقم الهاتف غير صحيح',
            ),
          ]),
        ),
      ],
    );
  }
}
