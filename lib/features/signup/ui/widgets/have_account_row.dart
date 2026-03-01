import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/text_styles.dart';

class HaveAccountRow extends StatelessWidget {
  const HaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.loginScreen);
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
