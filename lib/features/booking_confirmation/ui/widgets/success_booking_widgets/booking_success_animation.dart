import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

class BookingSuccessAnimation extends StatefulWidget {
  const BookingSuccessAnimation({super.key});

  @override
  State<BookingSuccessAnimation> createState() =>
      _BookingSuccessAnimationState();
}

class _BookingSuccessAnimationState extends State<BookingSuccessAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;
  late Animation<double> _glowAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _scaleAnim = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
    _glowAnim = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = 100.w(context);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryGreen,
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryGreen.withOpacity(0.20 * _glowAnim.value),
                blurRadius: 40,
                spreadRadius: 8,
              ),
              BoxShadow(
                color: AppColors.primaryGreen.withOpacity(0.20 * _glowAnim.value),
                blurRadius: 70,
                spreadRadius: 20,
              ),
            ],
          ),
          child: Transform.scale(
            scale: _scaleAnim.value,
            child: Icon(
              Icons.check_rounded,
              color: AppColors.darkBackground,
              size: 52.r(context),
            ),
          ),
        );
      },
    );
  }
}
