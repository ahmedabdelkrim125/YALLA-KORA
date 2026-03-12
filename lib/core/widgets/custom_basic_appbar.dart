import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class CustomBasicAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomBasicAppBar({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkBackground,
      elevation: 0,
      centerTitle: true,
      title: Text(title,style: TextStyles.boldWhite20,),
      leadingWidth: 82,
      leading: Padding(
        padding: context.responsivePadding(right: 16.0, top: 4.0, bottom: 4.0, left: 4.0),
        child: GestureDetector(
          onTap: () => context.pop(),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.card2,
              border: Border.all(color: Colors.white10, width: 0.8)
            ),
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,size: 24,),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
