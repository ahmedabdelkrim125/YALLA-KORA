import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/ui/widgets/primary_button.dart';

class WalletBalanceSection extends StatelessWidget {
  const WalletBalanceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20),
      child: Container(
        padding: context.responsivePadding(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(12.r(context)),
          border: Border(left: BorderSide(width: 4, color: AppColors.leftStripe))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('رصيد المحفظة',style: TextStyles.regularMuted14),
                  Text('150 ج.م',style: TextStyles.boldWhite28),
                ],
              ),
            ),
            Flexible(child: PrimaryButton(label: 'شحن الرصيد')),
          ],
        ),
      ),
    );
  }
}
