import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class OtpInputField extends StatefulWidget {
  final Function(String)? onCompleted;
  final Function(String)? onChanged;

  const OtpInputField({super.key, this.onCompleted, this.onChanged});

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 62.w(context),
      height: 73.h(context),
      textStyle: TextStyles.boldWhite20,
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        borderRadius: BorderRadius.circular(8.r(context)),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(color: Colors.transparent, width: 2.w(context)),
      ),
    );

    final submittedPinTheme = defaultPinTheme;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 4,
        controller: pinController,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        separatorBuilder: (index) => SizedBox(width: 16.w(context)),
        showCursor: true,
        cursor: Container(
          width: 2.w(context),
          height: 24.h(context),
          color: AppColors.primaryGreen,
        ),
        onCompleted: widget.onCompleted,
        onChanged: widget.onChanged,
      ),
    );
  }
}
