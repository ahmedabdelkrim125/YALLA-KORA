import 'package:appointment_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class AccountType extends StatelessWidget {
  const AccountType({super.key, required this.onSelected, required this.text});

  final ValueChanged<String> onSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: PopupMenuButton<String>(
          onSelected: onSelected,
          color:Colors.white,
          offset: Offset(-60, 10),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'لاعب',
              child: Text('لاعب'),
            ),
            const PopupMenuItem<String>(
              value: 'صاحب ملعب',
              child: Text('صاحب ملعب'),
            ),
          ],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_drop_down, color: Colors.white, size: 26,),
              Text(text, style: TextStyles.semiBoldWhite16,),
            ],
          ),
        ),
      ),
    );
  }
}