import 'package:appointment_app/core/helper/extensions.dart';
import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class HaveAccountRow extends StatelessWidget {
  const HaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text('تسجيل دخول ', style: TextStyles.regularPrimaryGreen14),
        ),
        Text('لديك حساب ؟ ', style: TextStyles.regularWhite14),
      ],
    );
  }
}
