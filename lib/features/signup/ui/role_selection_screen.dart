import 'package:flutter/material.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/features/signup/ui/widgets/signup_header.dart';
import 'package:yalla_kora/features/signup/ui/widgets_role/role_card.dart';
import '../../../core/helper/responsive_extensions.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theme/app_colors.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  int? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: const SignupHeader()),
              verticalSpace(context, height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'الملعب؟ ',
                    style: TextStyles.boldFieldBorder32.copyWith(
                      color: AppColors.primaryGreen,
                      fontSize: context.responsiveFontSize(32),
                    ),
                  ),
                  Text(
                    'انت مين في ',
                    style: TextStyles.boldFieldBorder32.copyWith(
                      fontSize: context.responsiveFontSize(32),
                    ),
                  ),
                ],
              ),
              verticalSpace(context, height: 20),
              Padding(
                padding: context.responsivePadding(horizontal: 20),
                child: Text(
                  'اختار دورك عشان نظبطلك الأبلكيشن على مقاسك.',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: TextStyles.regularWhite14.copyWith(
                    color: AppColors.lightText,
                  ),
                ),
              ),
              verticalSpace(context, height: 40),
              RoleCard(
                index: 0,
                title: 'أنا لاعب',
                subtitle: 'عايز أحجز ملعب أو انضم لتقسيمة.',
                icon: Assets.football,
                isSelected: _selectedRole == 0,
                onTap: () {
                  setState(() => _selectedRole = 0);
                  Navigator.pushNamed(
                    context,
                    Routes.signupScreen,
                    arguments: 'player',
                  );
                },
              ),
              RoleCard(
                index: 1,
                title: 'أنا صاحب ملعب',
                subtitle: 'عايز أضيف ملعبي و ادير حجوزاتي.',
                icon: Assets.football,
                isSelected: _selectedRole == 1,
                onTap: () {
                  setState(() => _selectedRole = 1);
                  Navigator.pushNamed(
                    context,
                    Routes.signupScreen,
                    arguments: 'owner',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}