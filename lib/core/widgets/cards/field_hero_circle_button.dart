// ── Hero circle button ────────────────────────────────
import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class FieldHeroCircleButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final VoidCallback onPressed;
  const FieldHeroCircleButton({super.key, required this.icon, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40.w(context), height: 40.h(context),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.45),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color ?? Colors.white, size: 27),
      ),
    );
  }
}