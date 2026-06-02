import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';

import '../../../../core/helper/spacing.dart';

class CheckoutBottomBar extends StatelessWidget {
  final String price;
  final VoidCallback onPressed;

  const CheckoutBottomBar({
    super.key,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 335.w(context),
        padding: context.responsivePadding(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'حصة الفرد',
                  style: TextStyles.regularMuted14.copyWith(
                    fontSize: 16,
                    height: 1.22,
                  ),
                ),
                Text(
                  '$price ج.م',
                  style: TextStyles.boldWhite20.copyWith(
                    fontSize: 24,
                    height: 1.50,
                  ),
                ),
              ],
            ),
            horizontalSpace(context, width: 16),
            Expanded(
              child: Padding(
                padding: context.responsivePadding(horizontal: 10),
                child: AppButton(
                  title: 'الحق واحجز مكانك !',
                  onPressed: onPressed,
                  width: double.infinity,
                  height: 50.h(context),
                  borderRadius: 14,
                  textStyle: TextStyles.boldDarkBackground18.copyWith(
                    fontSize: 16,
                    height: 1.50,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3300FF47),
                      blurRadius: 15,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
