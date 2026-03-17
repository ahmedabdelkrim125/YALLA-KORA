import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryGreen, AppColors.darkBackground],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.8],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(context, height: kToolbarHeight + 20),
          AccountAvatar(imagePath: Assets.player,),
          verticalSpace(context, height: 8),
          Text('عمر إيهاب',style: TextStyles.boldWhite20),
          verticalSpace(context, height: 8),
          AccountInfoSection(),
        ],
      ),
    );
  }
}

class AccountInfoSection extends StatelessWidget {
  const AccountInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20),
      child: Container(
        padding: context.responsivePadding(bottom: 12, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r(context)),
            border: Border(bottom: BorderSide(width: 2, color: AppColors.primaryGreen))
        ),
        child:IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AccountColumnInfo(value: '24', label: 'ماتش لعبته',),
              VerticalDivider(color: AppColors.primaryGreen,),
              AccountColumnInfo(value: '4', label: 'تقسيمات',),
              VerticalDivider(color: AppColors.primaryGreen,),
              AccountColumnInfo(value: '3', label: 'ملاعب مفضلة',),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountColumnInfo extends StatelessWidget {
  const AccountColumnInfo({
    super.key, required this.value, required this.label,
  });
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,style: TextStyles.boldWhite24),
        Text(label,style: TextStyles.regularMuted13),
      ],
    );
  }
}

class AccountAvatar extends StatelessWidget {
  const AccountAvatar({
    super.key, required this.imagePath,
  });

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h(context),
      width: 100.w(context),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(imagePath)),
          border: Border.all(width: 2, color: AppColors.primaryGreen)
      ),
    );
  }
}