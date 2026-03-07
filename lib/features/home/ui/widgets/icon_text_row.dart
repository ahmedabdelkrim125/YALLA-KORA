// ─────────────────────────────────────────
//  ICON TEXT ROW
// ─────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconText extends StatelessWidget {
  final String icon;
  final String text;
  final TextStyle textStyle;

  const IconText({
    super.key,
    required this.icon,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 4),
        Text(text, style: textStyle),
      ],
    );
  }
}
