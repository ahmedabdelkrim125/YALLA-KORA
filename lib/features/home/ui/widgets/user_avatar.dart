// ─────────────────────────────────────────
//  USER AVATAR
// ─────────────────────────────────────────
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff999999),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Icon(Icons.person_rounded, size: 44, color: Colors.white),
      ),
    );
  }
}
