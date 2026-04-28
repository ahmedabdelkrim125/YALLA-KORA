import 'package:flutter/material.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/features/splash/ui/widgets/center_content.dart';
import 'package:yalla_kora/features/splash/ui/widgets/green_glow_bottom.dart';
import 'package:yalla_kora/features/splash/ui/widgets/green_glow_top.dart';
import 'package:yalla_kora/features/splash/ui/widgets/loading_indicator.dart';
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
          GreenGlowTop(),
          GreenGlowBottom(),
          CenterContent(fadeAnim: _fadeAnim, scaleAnim: _scaleAnim),
          LoadingIndicator(fadeAnim: _fadeAnim),
        ],
      ),
    );
  }
}