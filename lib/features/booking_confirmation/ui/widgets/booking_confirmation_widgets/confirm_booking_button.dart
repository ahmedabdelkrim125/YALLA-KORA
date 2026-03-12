import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import '../../../../../core/helper/responsive_extensions.dart';

class ConfirmBookingButton extends StatelessWidget {
  const ConfirmBookingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16, vertical: 16),
      child: AppButton(
        title: 'تأكيد الحجز بـ 310 ج',
        onPressed: () => context.pushNamed(Routes.successBooking),
      ),
    );
  }
}
