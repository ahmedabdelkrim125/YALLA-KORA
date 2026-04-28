import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/service/storage_service.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/modern_dialog_helper.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 36, vertical: 14),
      child: InkWell(
        onTap: () {
          ModernDialog.showConfirmation(
            context: context,
            title: 'تسجيل الخروج؟',
            message: 'هل أنت متأكد من رغبتك في تسجيل الخروج؟',
            onCancel: () => context.pop,
            onConfirm: () async{
              await StorageService.clearAll();
              if(!context.mounted) return;
              context.pushNamedAndRemoveUntil(
                Routes.loginScreen,
                predicate: (r) => false
              );
            }
          );
        },
        child: Row(
          children: [
            SvgPicture.asset(Assets.logOut),
            horizontalSpace(context, width: 8),
            Text('تسجيل الخروج', style: TextStyles.boldWhite14.copyWith(color: AppColors.muted),),
          ],
        ),
      ),
    );
  }
}