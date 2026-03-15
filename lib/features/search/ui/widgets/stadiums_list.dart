import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'stadium_card.dart';

class StadiumsList extends StatelessWidget {
  const StadiumsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h(context), 
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 16), 
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => horizontalSpace(context, width: 12),
        itemBuilder: (context, index) {
          return const StadiumCard();
        },
      ),
    );
  }
}