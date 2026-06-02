import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routes.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key, required this.match});
  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(Routes.matchDetailsScreen, arguments: match);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryGreen,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
      ),
      child: Text(
        'احجز مكانك',
        style: TextStyles.boldWhite12.copyWith(color: Colors.black),
      ),
    );
  }
}
