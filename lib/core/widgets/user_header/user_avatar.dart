import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w(context),
      height: 44.h(context),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff999999),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.only(top: 6.0.h(context)),
        child: Icon(
          Icons.person_rounded,
          size: 44.r(context),
          color: Colors.white,
        ),
      ),
    );
  }
}
