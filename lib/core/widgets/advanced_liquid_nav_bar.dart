import 'package:flutter/material.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/widgets/liquid_glass_nav_bar.dart';

class AdvancedLiquidNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<NavBarItem> items;

  const AdvancedLiquidNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  State<AdvancedLiquidNavBar> createState() => _AdvancedLiquidNavBarState();
}

class _AdvancedLiquidNavBarState extends State<AdvancedLiquidNavBar>
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
  }

  @override
  void didUpdateWidget(AdvancedLiquidNavBar oldWidget) {
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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
      child: SizedBox(
        height: navHeight,
        child: Stack(
          children: [
            LiquidGlassLayer(
              settings: const LiquidGlassSettings(
                thickness: 25,
                blur: 20,
                glassColor: Color(0x30FFFFFF),
                lightIntensity: 1.5,
                refractiveIndex: 1.4,
              ),
              child: LiquidGlass(
                shape: LiquidRoundedSuperellipse(borderRadius: 30.r(context)),
                child: const SizedBox.expand(),
              ),
            ),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                final double itemWidth = navWidth / widget.items.length;
                final double previousPosition = _previousIndex * itemWidth;
                final double currentPosition = widget.currentIndex * itemWidth;
                final double animatedPosition =
                    previousPosition +
                    (currentPosition - previousPosition) * _animation.value;

                return Positioned(
                  left: animatedPosition + (itemWidth - indicatorSize) / 2,
                  top: (navHeight - indicatorSize) / 2,
                  child: LiquidGlassLayer(
                    settings: const LiquidGlassSettings(
                      thickness: 15,
                      blur: 5,
                      glassColor: Color(0x60FFFFFF),
                      lightIntensity: 2.0,
                    ),
                    child: LiquidGlass(
                      shape: LiquidRoundedSuperellipse(
                        borderRadius: 20.r(context),
                      ),
                      child: SizedBox(
                        width: indicatorSize,
                        height: indicatorSize,
                      ),
                    ),
                  ),
                );
              },
            ),
            Row(
              children: List.generate(
                widget.items.length,
                (index) => Expanded(
                  child: _buildNavItem(context, index, iconSize, navHeight),
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
                color: isSelected ? Colors.white : Colors.white60,
              ),
            ),
            if (item.label != null) ...[
              SizedBox(height: 3.h(context)),
              Text(
                item.label!,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white60,
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
