import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyles.boldWhite18);
  }
}
