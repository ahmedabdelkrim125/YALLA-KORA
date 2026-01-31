import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/widgets/custom_pop_menu.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key, required this.selectedText, required this.onSelected});

  final String selectedText;
  final ValueChanged<String> onSelected;
  @override
  Widget build(BuildContext context) {
    return  Row(
      textDirection: TextDirection.rtl,
      children: [
        CustomPopMenu(
          onSelected: onSelected,
          selectedText: selectedText,
          menuItems: <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(value: 'القاهرة', child: Text('القاهرة')),
            const PopupMenuItem<String>(value: 'الاسكندرية', child: Text('الاسكندرية')),
            const PopupMenuItem<String>(value: 'الجيزة', child: Text('الجيزة')),
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(left: 16.w(context)),
          child: SvgPicture.asset(Assets.mapIcon),
        ),
      ],
    );
  }
}