import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/service/storage_service.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/user_header/notification_bt.dart';
import 'package:yalla_kora/core/widgets/user_header/user_avatar.dart';
import '../../helper/spacing.dart';

class UserHeader extends StatelessWidget {
  final String greeting;

  const UserHeader({super.key, required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: context.responsivePadding(
          left: 20,
          top: 10,
          right: 20,
          bottom: 16,
        ),
        child: Row(
          children: [
            const UserAvatar(),
            horizontalSpace(context, width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(greeting, style: TextStyles.regularGrey12),
                  verticalSpace(context, height: 2),
                  FutureBuilder<String?>(
                    future: StorageService.getUserName(),
                    builder: (context, snapshot){
                      if(snapshot.connectionState == ConnectionState.waiting){
                        return Skeletonizer(
                          effect: ShimmerEffect(
                            baseColor: AppColors.cardBg2,
                            highlightColor: AppColors.primaryGreen,
                            duration: const Duration(seconds: 1),
                          ),
                          child: Text('xxxxx xxxxx', style: TextStyles.boldWhite18),
                        );
                      }
                      if(snapshot.hasError || snapshot.data == null){
                        return Text('لاعب', style: TextStyles.boldWhite18);
                      }
                      return Text(snapshot.data!, style: TextStyles.boldWhite18);
                  }),
                ],
              ),
            ),
            const NotificationButton(),
          ],
        ),
      ),
    );
  }
}
