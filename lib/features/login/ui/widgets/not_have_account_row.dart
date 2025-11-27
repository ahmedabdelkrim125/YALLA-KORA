import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class NotHaveAccountRow extends StatelessWidget {
  const NotHaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text('سجل الآن ', style: TextStyles.regularPrimaryGreen14),
        ),
        Text('ليس لديك حساب ؟ ', style: TextStyles.regularWhite14),
      ],
    );
  }
}
