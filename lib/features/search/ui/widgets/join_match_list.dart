import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'join_match_card.dart';

class JoinMatchList extends StatelessWidget {
  const JoinMatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h, 
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        padding: EdgeInsets.symmetric(horizontal: 16.w), 
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => horizontalSpace(context, width: 12),
        itemBuilder: (context, index) {
          return const JoinMatchCard();
        },
      ),
    );
  }
}



