import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/responsive_extensions.dart';

class SocialLoginAuthRow extends StatelessWidget {
  const SocialLoginAuthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(Assets.googleIcon),
        ),
        SizedBox(width: 55.w(context)),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(Assets.facebookIcon),
        ),
        SizedBox(width: 55.w(context)),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(Assets.appleIcon),
        ),
      ],
    );
  }
}
