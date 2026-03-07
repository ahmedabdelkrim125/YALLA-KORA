// ─────────────────────────────────────────
//  APP HEADER
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/ui/widgets/notification_bt.dart';
import 'package:yalla_kora/features/home/ui/widgets/user_avatar.dart';

class AppHeader extends StatelessWidget {
  final String greeting;
  final String userName;

  const AppHeader({super.key, required this.greeting, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 16),
      child: Row(
        children: [
          const UserAvatar(),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(greeting, style: TextStyles.regularGrey12),
                const SizedBox(height: 2),
                Text(userName, style: TextStyles.boldWhite18),
              ],
            ),
          ),
          const NotificationButton(),
        ],
      ),
    );
  }
}
