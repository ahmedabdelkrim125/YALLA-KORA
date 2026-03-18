import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class AccountActionButtons extends StatelessWidget {
  const AccountActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(12.r(context)),
        ),
        child: Column(
          children: [
            AccountActionButton(title: 'تعديل الحساب', leadingIconPath: Assets.user,),
            Divider(height: 0, thickness:1,color: AppColors.slateGray,),
            AccountActionButton(
              title: 'إشعارات الماتشات',
              leadingIconPath: Assets.notificationsIcon,
              trailWidget: SizedBox(
                height: 0,
                child: Switch(
                    value: true,
                    activeTrackColor: AppColors.primaryGreen,
                    padding: EdgeInsets.zero,
                    onChanged: (value) {}
                ),
              ),
            ),
            Divider(height: 0, thickness:1,color: AppColors.slateGray,),
            AccountActionButton(title: 'طلب إضافة ملعب', leadingIconPath: Assets.plus,),
            Divider(height: 0, thickness:1,color: AppColors.slateGray,),
            AccountActionButton(title: 'المساعدة والدعم', leadingIconPath: Assets.headphones,),
          ],
        ),
      ),
    );
  }
}

class AccountActionButton extends StatelessWidget {
  const AccountActionButton({
    super.key, required this.title, required this.leadingIconPath, this.trailWidget,
  });
  final String leadingIconPath;
  final String title;
  final Widget? trailWidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20, vertical: 14),
      child: Row(
        children: [
          SvgPicture.asset(leadingIconPath),
          horizontalSpace(context, width: 8),
          Text(title, style: TextStyles.mediumWhite14,),
          Spacer(),
          trailWidget??SvgPicture.asset(Assets.chevronLeft),
        ],
      ),
    );
  }
}