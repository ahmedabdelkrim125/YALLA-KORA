import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class TabIcon extends StatelessWidget {
  final String svgIcon;
  final bool isActive;

  const TabIcon({super.key, required this.svgIcon, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIcon,
      width: context.responsiveRadius(22),
      height: context.responsiveRadius(22),
    );
  }
}
