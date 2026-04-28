import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import '../../../core/helper/extensions.dart';
import '../../../core/service/storage_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnim;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    _navigate();
  }

  void _setupAnimations() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnim = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _scaleAnim = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticOut,
      ),
    );

    _controller.forward();
  }

  Future<void> _navigate() async {
    // Wait for animation + minimum splash duration
    await Future.delayed(const Duration(milliseconds: 3000));

    final token = await StorageService.getAuthToken();

    if (!mounted) return;

    if (token != null) {
      context.pushNamedAndRemoveUntil(
        Routes.mainScreen,
        predicate:  (r) => false,
      );
    } else {
      context.pushNamedAndRemoveUntil(
        Routes.onBoardingScreen,
        predicate:  (r) => false,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Stack(
        children: [
          // ── Green glow top ──────────────────────────
          Positioned(
            top: -80.h(context),
            left: -60.w(context),
            child: Container(
              width: 250.w(context),
              height: 250.h(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryGreen.withOpacity(0.08),
              ),
            ),
          ),

          // ── Green glow bottom ───────────────────────
          Positioned(
            bottom: -60.h(context),
            right: -40.w(context),
            child: Container(
              width: 200.w(context),
              height: 200.h(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryGreen.withOpacity(0.06),
              ),
            ),
          ),

          // ── Center content ──────────────────────────
          Center(
            child: FadeTransition(
              opacity: _fadeAnim,
              child: ScaleTransition(
                scale: _scaleAnim,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Logo
                    SvgPicture.asset(
                      Assets.logosvg,
                      width: 120.w(context),
                      height: 120.h(context),
                    ),

                    SizedBox(height: 20.h(context)),

                    // App name
                    Text(
                      'يلا كورة',
                      style: TextStyles.boldWhite28,
                    ),

                    SizedBox(height: 8.h(context)),

                    // Tagline
                    Text(
                      'احجز ملعبك في ثوانٍ',
                      style: TextStyles.regularMuted14,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ── Loading indicator bottom ─────────────────
          Positioned(
            bottom: 60.h(context),
            left: 0,
            right: 0,
            child: FadeTransition(
              opacity: _fadeAnim,
              child: Column(
                children: [
                  SizedBox(
                    width: 24.w(context),
                    height: 24.h(context),
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.primaryGreen,
                    ),
                  ),
                  SizedBox(height: 12.h(context)),
                  Text(
                    'جاري التحميل...',
                    style: TextStyles.regularGrey12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}