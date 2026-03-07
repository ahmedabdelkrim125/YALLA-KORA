import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';

class NavBarItem {
  final String icon;
  final String? label;

  const NavBarItem({required this.icon, this.label});
}

class LiquidGlassNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<NavBarItem> items;

  const LiquidGlassNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  State<LiquidGlassNavBar> createState() => _LiquidGlassNavBarState();
}

class _LiquidGlassNavBarState extends State<LiquidGlassNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int _previousIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    _controller.forward();
  }

  @override
  void didUpdateWidget(LiquidGlassNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      _previousIndex = oldWidget.currentIndex;
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final navHeight = 62.h(context);
    final hPadding = 16.w(context);
    final vPadding = 10.h(context);
    final indicatorSize = 46.w(context);
    final iconSize = 22.w(context);
    final navWidth = context.screenWidth - hPadding * 2;
    final radius = 30.r(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
      child: SizedBox(
        height: navHeight,
        width: navWidth,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                child: Container(
                  width: navWidth,
                  height: navHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    color: Colors.white.withOpacity(0.10),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.20),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),

            AnimatedBuilder(
              animation: _animation,
              builder: (context, _) {
                final double itemWidth = navWidth / widget.items.length;
                final double prevPos = _previousIndex * itemWidth;
                final double currPos = widget.currentIndex * itemWidth;
                final double animPos =
                    prevPos + (currPos - prevPos) * _animation.value;

                return Positioned(
                  left: animPos + (itemWidth - indicatorSize) / 2,
                  top: (navHeight - indicatorSize) / 2,
                  child: Container(
                    width: indicatorSize,
                    height: indicatorSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r(context)),
                      // لون primaryGreen مخفف
                      color: AppColors.primaryGreen.withOpacity(0.20),
                      border: Border.all(
                        color: AppColors.primaryGreen.withOpacity(0.55),
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryGreen.withOpacity(0.30),
                          blurRadius: 14,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            SizedBox(
              height: navHeight,
              width: navWidth,
              child: Row(
                children: List.generate(
                  widget.items.length,
                  (index) => Expanded(
                    child: _buildNavItem(context, index, iconSize, navHeight),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    int index,
    double iconSize,
    double navHeight,
  ) {
    final isSelected = widget.currentIndex == index;
    final item = widget.items[index];

    return GestureDetector(
      onTap: () => widget.onTap(index),
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        height: navHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedScale(
              scale: isSelected ? 1.15 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: Image.asset(
                item.icon,
                width: iconSize,
                height: iconSize,
                color: isSelected
                    ? AppColors.primaryGreen
                    : Colors.white.withOpacity(0.55),
              ),
            ),
            if (item.label != null) ...[
              SizedBox(height: 3.h(context)),
              Text(
                item.label!,
                style: TextStyle(
                  color: isSelected
                      ? AppColors.primaryGreen
                      : Colors.white.withOpacity(0.55),
                  fontSize: context.isMobile ? 9 : 11,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
