import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

class BookingActionButton extends StatelessWidget {
  final String title;
  final String svgimage;
  final Color bgColor;
  final Color borderColor;
  final TextStyle textStyle;

  const BookingActionButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.borderColor,
    required this.svgimage,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.responsiveHeight(40),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(context.responsiveRadius(12)),
        border: Border.all(color: borderColor, width: 0.50),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: context.responsiveWidth(6),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: textStyle),
            SvgPicture.asset(svgimage),
          ],
        ),
      ),
    );
  }
}
