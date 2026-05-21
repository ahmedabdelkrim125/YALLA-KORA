import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import '../../../../core/helper/responsive_extensions.dart';
import 'join_match_card.dart';

class JoinMatchList extends StatelessWidget {
  const JoinMatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h(context),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) =>
            horizontalSpace(context, width: 12),
        itemBuilder: (context, index) {
          return const JoinMatchCard();
        },
      ),
    );
  }
}
