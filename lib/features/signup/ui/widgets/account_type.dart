import 'package:flutter/material.dart';
import 'package:yalla_kora/core/widgets/custom_pop_menu.dart';

class AccountType extends StatelessWidget {
  const AccountType({super.key, required this.onSelected, required this.text});

  final ValueChanged<String> onSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomPopMenu(
      onSelected: onSelected,
      selectedText: text,
      menuItems: <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(value: 'لاعب', child: Text('لاعب')),
        const PopupMenuItem<String>(
          value: 'صاحب ملعب',
          child: Text('صاحب ملعب'),
        ),
      ],
    );
  }
}
