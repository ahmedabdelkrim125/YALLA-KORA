import 'package:flutter/material.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/helper/responsive_extensions.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/widgets/app_button.dart';
import 'widget/otp_input_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: context.responsivePadding(horizontal: 20, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'التحقق من OTP',
                      textDirection: TextDirection.rtl,
                      style: TextStyles.boldWhite20,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30.h(context)),
                  Image.asset(Assets.otpSecureBubble),
                  SizedBox(height: 46.h(context)),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أدخل الكود المرسل إليك',
                      style: TextStyles.mediumWhite12,
                    ),
                  ),
                  SizedBox(height: 43.h(context)),
                  OtpInputField(),
                  SizedBox(height: 70.h(context)),
                  AppButton(onPressed: () {}, title: 'تأكيد'),
                  SizedBox(height: 22.h(context)),

                  TextButton(
                    onPressed: () {
                      // resend otp
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'إعادة إرسال الكود ؟ 20.0 ثانية',
                      style: TextStyles.extraLightLightText12,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
