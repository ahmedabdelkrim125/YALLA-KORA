import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/user_header/notification_bt.dart';
import 'package:yalla_kora/core/widgets/user_header/user_avatar.dart';
import '../../helper/spacing.dart';

class UserHeader extends StatelessWidget {
  final String greeting;
  final String userName;

  const UserHeader({super.key, required this.greeting, required this.userName});

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
                  Text(userName, style: TextStyles.boldWhite18),
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
