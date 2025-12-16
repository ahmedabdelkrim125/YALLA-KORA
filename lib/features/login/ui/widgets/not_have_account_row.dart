import 'package:flutter/material.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/text_styles.dart';

class NotHaveAccountRow extends StatelessWidget {
  const NotHaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.signupScreen);
          },
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
