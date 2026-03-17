import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 36, vertical: 14),
      child: Row(
        children: [
          SvgPicture.asset(Assets.trash),
          horizontalSpace(context, width: 8),
          Text('حذف الحساب', style: TextStyles.boldWhite14.copyWith(color: AppColors.red2),),
        ],
      ),
    );
  }
}
