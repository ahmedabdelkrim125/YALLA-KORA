import 'package:flutter/material.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text, style: TextStyles.boldWhite24),
      centerTitle: true,
      scrolledUnderElevation: 0,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: Icon(Icons.arrow_back_ios, color: Colors.white,),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
