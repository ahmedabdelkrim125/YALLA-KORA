import 'package:flutter/material.dart';
import 'previous_booking_card.dart';
import 'animated_list_item.dart';
import '../../../../core/helper/spacing.dart';

class PreviousContent extends StatelessWidget {
  const PreviousContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      separatorBuilder: (context, index) => verticalSpace(context, height: 12),
      itemBuilder: (context, index) =>
          AnimatedListItem(index: index, child: const PreviousBookingCard()),
    );
  }
}
