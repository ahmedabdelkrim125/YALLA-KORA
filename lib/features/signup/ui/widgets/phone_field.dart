import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/text_styles.dart';

class AppPhoneFormField extends StatelessWidget {
  final PhoneController? controller;
  final String? Function(PhoneNumber?)? validator;

  const AppPhoneFormField({super.key, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w(context)),
      child: PhoneFormField(
        controller: controller,
        validator:
            validator ??
            PhoneValidator.compose([
              PhoneValidator.required(
                context,
                errorText: 'من فضلك أدخل رقم الهاتف',
              ),
              PhoneValidator.validMobile(
                context,
                errorText: 'رقم الهاتف غير صحيح',
              ),
            ]),
        isCountrySelectionEnabled: true,
        isCountryButtonPersistent: true,
        countrySelectorNavigator: const CountrySelectorNavigator.page(),
        style: TextStyles.mediumWhite14.copyWith(
          color: Colors.white,
        ), // لون النص أبيض
        cursorColor: Colors.white, // لون المؤشر أبيض
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 18.h(context),
            horizontal: 12.w(context),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r(context)),
            borderSide: const BorderSide(
              color: AppColors.primaryGreen,
              width: 1.5,
            ),
          ),
        ),
        countryButtonStyle: CountryButtonStyle(
          showDialCode: true,
          showIsoCode: false,
          showFlag: true,
          flagSize: 28, // حجم العلم أكبر
          textStyle: TextStyles.mediumWhite14.copyWith(
            color: Colors.white,
          ), // لون كود الدولة أبيض
        ),
      ),
    );
  }
}
