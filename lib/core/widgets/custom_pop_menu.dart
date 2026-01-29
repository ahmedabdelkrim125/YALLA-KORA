import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import '../theme/text_styles.dart';

class CustomPopMenu extends StatelessWidget {
  const CustomPopMenu({
    super.key,
    required this.onSelected,
    required this.selectedText, required this.menuItems,
  });

  final ValueChanged<String> onSelected;
  final String selectedText;
  final List<PopupMenuEntry<String>> menuItems;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w(context)),
        child: PopupMenuButton<String>(
          onSelected: onSelected,
          color: Colors.white,
          offset: Offset(-60.w(context), 10.h(context)),
          itemBuilder: (BuildContext context) => menuItems,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_drop_down, color: Colors.white, size: 26),
              Text(selectedText, style: TextStyles.semiBoldWhite16),
            ],
          ),
        ),
      ),
    );
  }
}